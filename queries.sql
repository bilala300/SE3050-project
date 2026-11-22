USE MarketManagement;

-- CATEGORY 1: MARKET LOGISTICS and MANAGEMENT

-- 1. Daily Market Schedule Finder
-- Purpose: Identifies which markets are active on a given day
-- and lists operational hours alongside the manager's full name.
SELECT 
    MarketName, 
    MarketAddress, 
    OpeningTime, 
    ClosingTime, 
    CONCAT(ManagerFirstName, ' ', ManagerLastName) AS MarketManager
FROM ManagingMarkets
WHERE Days LIKE '%Sunday%'
ORDER BY OpeningTime ASC;


-- 2. Vendor Distribution per Market
-- Purpose: Counts how many active vendors are currently assigned to each market location.
-- Useful for identifying underutilized spaces or highly competitive hubs.
SELECT 
    m.MarketName, 
    COUNT(v.VendorID) AS TotalVendors
FROM ManagingMarkets m
LEFT JOIN Vendors v ON m.MarketID = v.MarketID
GROUP BY m.MarketID, m.MarketName
ORDER BY TotalVendors DESC;


-- CATEGORY 2: INVENTORY and PRODUCT AUDITS

-- 3. Low Stock Alert Report
-- Purpose: Pulls products across all vendors where inventory has dropped below 30 units.
-- Displays the vendor contact info to streamline restocking requests.
SELECT 
    p.ProductName, 
    p.Category, 
    p.Inventory, 
    v.VendorName, 
    v.VendorPhoneNumber,
    v.VendorEmail
FROM Products p
JOIN Vendors v ON p.VendorID = v.VendorID
WHERE p.Inventory < 30
ORDER BY p.Inventory ASC;


-- 4. Product Catalog Breakdown by Category
-- Purpose: Analyzes pricing strategies by displaying the average cost, 
-- maximum cost, and total product options available within each inventory category.
SELECT 
    Category,
    COUNT(ProductID) AS UniqueProducts,
    MIN(ProductCost) AS MinimumPrice,
    MAX(ProductCost) AS MaximumPrice,
    ROUND(AVG(ProductCost), 2) AS AveragePrice
FROM Products
GROUP BY Category
ORDER BY UniqueProducts DESC;


-- CATEGORY 3: CUSTOMER INSIGHTS and REWARDS

-- 5. Customer Directory and Loyalty Filtering
-- Purpose: Generates a mailing list of customers who are enrolled in the 
-- rewards program, combining their names for easy use in label generation.
SELECT 
    CustomerID,
    CONCAT(CustomerLastName, ', ', CustomerFirstName) AS CustomerName,
    CustomerEmailAddress,
    CustomerPhoneNumber
FROM Customers
WHERE RewardsMember = TRUE
ORDER BY CustomerLastName ASC;


-- CATEGORY 4: ORDER FULFILLMENT and FINANCIAL PERFORMANCE

-- 6. Comprehensive Sales Receipt Ledger
-- Purpose: A deep 4-table JOIN displaying transactional details. Links the 
-- customer, total paid, items purchased, quantities, and fulfilling vendors.
SELECT 
    o.OrderID,
    o.DateTime AS OrderTimestamp,
    CONCAT(c.CustomerFirstName, ' ', c.CustomerLastName) AS CustomerName,
    p.ProductName,
    oi.ItemQuantity,
    oi.Price AS UnitPrice,
    v.VendorName,
    o.PaymentTotal,
    o.PaymentMethod
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN OrderItems oi ON o.OrderID = oi.OrderID
JOIN Products p ON oi.ProductID = p.ProductID
JOIN Vendors v ON p.VendorID = v.VendorID
ORDER BY o.OrderID ASC;


-- 7. High-Value Customer Leaderboard
-- Purpose: Ranks customers by their cumulative spending all historical orders.
-- Identifies top spenders for VIP rewards processing.
SELECT 
    c.CustomerID,
    CONCAT(c.CustomerFirstName, ' ', c.CustomerLastName) AS CustomerName,
    c.CustomerEmailAddress,
    COUNT(o.OrderID) AS TotalOrdersPlaced,
    SUM(o.PaymentTotal) AS LifetimeExpenditure
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerFirstName, c.CustomerLastName, c.CustomerEmailAddress
ORDER BY LifetimeExpenditure DESC;


-- 8. Top Performing Vendors by Gross Revenue
-- Purpose: Measures financial success merchant by calculating their gros 
-- sales intake from all completed order item allocations.
SELECT 
    v.VendorID,
    v.VendorName,
    CONCAT(v.ManagerFirstName, ' ', v.ManagerLastName) AS VendorManager,
    COUNT(oi.OrderItemsID) AS TotalItemsSold,
    SUM(oi.ItemQuantity * oi.Price) AS GrossRevenue
FROM Vendors v
JOIN Products p ON v.VendorID = p.VendorID
JOIN OrderItems oi ON p.ProductID = oi.ProductID
GROUP BY v.VendorID, v.VendorName, v.ManagerFirstName, v.ManagerLastName
ORDER BY GrossRevenue DESC;