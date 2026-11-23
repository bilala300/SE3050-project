Group Project for Fall 2026 for SE3050 Database Systems Project Members: Bilal Ahmed 
# Market Management Database

## Project Proposal

The Market Management Database is intended to be used for the management of the data related to markets, vendors, products and orders.

Market info will be saved in the system including the market name, address, hours of operation, phone number, and manager info. It’ll keep track of vendors, including their business information, contact information, stall number, and permit status.

Vendors will have products with information, which will contain product name, cost, product category, product inventory and special product traits. The database will also keep order information, payment details and customer information if necessary.

## Main Features

- Manage market information
- Manage vendors and their contact information
- Monitor stall numbers and permits of vendors
- Managing products and inventory:
- Monitor products and prices
- Record orders
- Record details of the types of payment and amounts received.

## How to Run the Website

We are using Python, Flask and MySQL in our project.

Download or clone from this GitHub repository.

Install Python, MySQL Server.

Open MySQL Workbench.

Execute the following script to create the database tables: schema.sql.

Run data.sql to add the sample data.

Open the project folder in VS Code.

In a terminal, install necessary packages:

Use the following command to install packages from requirements.txt: python -m pip install -r requirements.txt

Fill out your own MySQL username and password in the .env file for this project, which should be located in the project root folder and be a copy of the .env.example file.

Start the website by running:

python app.py

Go to the website in your web browser:

http://127.0.0.1:5000/

## test the website, follow these steps:

Visit the Farmers Markets on the homepage.

To view vendors at a market, click on View Vendors.

Visit View Products to see their products.

Use Search Products to search for a product.

Click Pre Order and choose a Customer.

Please enter an amount and verify the order.

Open MySQL Workbench to check that the order was saved and the inventory was updated.

## Video Demonstration

https://drive.google.com/file/d/1xRxG7l-mS2aDfmP1FFSEQiP40o-6aVrT/view?usp=sharing
