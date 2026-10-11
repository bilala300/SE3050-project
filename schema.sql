CREATE DATABASE IF NOT EXISTS MarketManagement;
USE MarketManagement;


CREATE TABLE ManagingMarkets (
    MarketID INT AUTO_INCREMENT PRIMARY KEY,
    MarketName VARCHAR(100) NOT NULL,
    MarketAddress VARCHAR(255),
    Days VARCHAR(100),
    OpeningTime TIME,
    ClosingTime TIME,
    MarketPhoneNumber VARCHAR(20),
    ManagerFirstName VARCHAR(50),
    ManagerLastName VARCHAR(50)
);


CREATE TABLE Vendors (
    VendorID INT AUTO_INCREMENT PRIMARY KEY,
    VendorName VARCHAR(100) NOT NULL,
    VendorEmail VARCHAR(100),
    VendorPhoneNumber VARCHAR(20),
    VendorAddress VARCHAR(255),
    PermitStatus VARCHAR(50),
    ManagerFirstName VARCHAR(50),
    ManagerLastName VARCHAR(50),
    MarketID INT,
    FOREIGN KEY (MarketID)
        REFERENCES ManagingMarkets(MarketID)
);


CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    ProductCost DECIMAL(10,2) NOT NULL,
    Category VARCHAR(100),
    Inventory INT DEFAULT 0,
    SpecialTrait VARCHAR(100),
    VendorID INT NOT NULL,
    FOREIGN KEY (VendorID)
        REFERENCES Vendors(VendorID)
);


CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerFirstName VARCHAR(50) NOT NULL,
    CustomerLastName VARCHAR(50) NOT NULL,
    CustomerAddress VARCHAR(255),
    CustomerEmailAddress VARCHAR(100),
    CustomerPhoneNumber VARCHAR(20),
    RewardsMember BOOLEAN DEFAULT FALSE
);


CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    DateTime DATETIME NOT NULL,
    PaymentTotal DECIMAL(10,2) NOT NULL,
    PaymentMethod VARCHAR(50),
    CustomerID INT NOT NULL,
    FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderItems (
    OrderItemsID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    ItemQuantity INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    FulfillmentStatus VARCHAR(50),
    FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)

);