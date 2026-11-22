import os
from dotenv import load_dotenv
load_dotenv()
from decimal import Decimal
from flask import Flask, render_template, request, redirect, url_for, flash
import pymysql
from pymysql.cursors import DictCursor

app = Flask(__name__)
app.secret_key = os.environ.get('SECRET_KEY', 'dev-only-change-this-key')


def connect():
    return pymysql.connect(host=os.getenv('DB_HOST', 'localhost'), port=int(os.getenv('DB_PORT', '3306')),
                           user=os.getenv('DB_USER', 'root'), password=os.getenv('DB_PASSWORD', ''),
                           database=os.getenv('DB_NAME', 'MarketManagement'), cursorclass=DictCursor,
                           autocommit=False, charset='utf8mb4')


def read(sql, args=()):
    conn = connect()
    try:
        with conn.cursor() as cursor:
            cursor.execute(sql, args)
            return cursor.fetchall()
    finally:
        conn.close()


@app.route('/')
def home():
    markets = read('SELECT MarketID, MarketName, MarketAddress, Days, OpeningTime, ClosingTime FROM ManagingMarkets ORDER BY MarketName')
    return render_template('markets.html', markets=markets)


@app.route('/markets/<int:market_id>')
def market(market_id):
    markets = read('SELECT * FROM ManagingMarkets WHERE MarketID = %s', (market_id,))
    if not markets:
        return 'Market not found', 404
    vendors = read('SELECT VendorID, VendorName, PermitStatus, VendorEmail FROM Vendors WHERE MarketID = %s ORDER BY VendorName', (market_id,))
    return render_template('market.html', market=markets[0], vendors=vendors)


@app.route('/products')
def products():
    term = request.args.get('q', '').strip()
    rows = read('''SELECT p.ProductID, p.ProductName, p.ProductCost, p.Inventory, p.Category,
                          v.VendorName, m.MarketName
                   FROM Products p JOIN Vendors v ON p.VendorID = v.VendorID
                   LEFT JOIN ManagingMarkets m ON v.MarketID = m.MarketID
                   WHERE p.ProductName LIKE %s OR p.Category LIKE %s OR v.VendorName LIKE %s OR m.MarketName LIKE %s
                   ORDER BY p.ProductName''', tuple(['%' + term + '%'] * 4))
    return render_template('products.html', products=rows, term=term)


@app.route('/preorder/<int:product_id>', methods=['GET', 'POST'])
def preorder(product_id):
    products = read('''SELECT p.ProductID, p.ProductName, p.ProductCost, p.Inventory,
                              v.VendorName FROM Products p JOIN Vendors v ON p.VendorID = v.VendorID
                       WHERE p.ProductID = %s''', (product_id,))
    if not products:
        return 'Product not found', 404
    product = products[0]
    customers = read('SELECT CustomerID, CustomerFirstName, CustomerLastName FROM Customers ORDER BY CustomerFirstName, CustomerLastName')
    if request.method == 'POST':
        try:
            customer_id = int(request.form.get('customer_id', ''))
            quantity = int(request.form.get('quantity', ''))
            if quantity < 1:
                raise ValueError('Quantity must be at least 1.')
        except (ValueError, TypeError):
            flash('Choose a customer and enter a valid quantity.', 'error')
            return render_template('preorder.html', product=product, customers=customers)
        conn = None
        try:
            conn = connect()
            with conn.cursor() as cursor:
                # All writes occur in one transaction. Lock product row to avoid overselling.
                cursor.execute('SELECT Inventory, ProductCost FROM Products WHERE ProductID = %s FOR UPDATE', (product_id,))
                stock = cursor.fetchone()
                if not stock or stock['Inventory'] < quantity:
                    raise ValueError('Not enough inventory available for this order.')
                cursor.execute('SELECT CustomerID FROM Customers WHERE CustomerID = %s', (customer_id,))
                if cursor.fetchone() is None:
                    raise ValueError('Please choose a valid customer.')
                price = Decimal(str(stock['ProductCost']))
                total = price * quantity
                cursor.execute('''INSERT INTO Orders (DateTime, PaymentTotal, PaymentMethod, CustomerID)
                                  VALUES (NOW(), %s, %s, %s)''', (total, 'Pre-order (unpaid)', customer_id))
                order_id = cursor.lastrowid
                cursor.execute('''INSERT INTO OrderItems (OrderID, ProductID, ItemQuantity, Price, FulfillmentStatus)
                                  VALUES (%s, %s, %s, %s, %s)''', (order_id, product_id, quantity, price, 'Pre-ordered'))
                cursor.execute('UPDATE Products SET Inventory = Inventory - %s WHERE ProductID = %s', (quantity, product_id))
            conn.commit()
            flash(f'Pre-order #{order_id} placed successfully!', 'success')
            return redirect(url_for('products'))
        except (ValueError, pymysql.MySQLError) as exc:
            if conn:
                conn.rollback()
            flash(str(exc) if isinstance(exc, ValueError) else 'Database error. No order was placed.', 'error')
        finally:
            if conn:
                conn.close()
    return render_template('preorder.html', product=product, customers=customers)


if __name__ == '__main__':
    app.run(debug=True)
