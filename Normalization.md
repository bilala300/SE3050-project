# Market Management Database
## Milestone 2: Database Normalization

### Introduction

Information to markets, vendors, products, customers and orders are stored in our Market Management Database. It has six tables.

The database was organized and information wasnt repeated.

### First Normal Form 

One value in each column and primary key in each table.

Our database is a 1NF design as the information is stored in separate columns. 

### Second Normal Form 

The database is in 1NF and all remaining fields are dependent on all of the fields of the primary key.

Our tables are in 2NF because they each have one primary key OrderID or ProductID.

ProductID determines the product name, cost and stock.

### Third Normal Form (3NF)

A 3NF database is a database that meets the 2NF standards and doesnt store data that is dependent on other non key columns in the tables.

We're using a database that is in 3NF due to having the data in different tables.

The Orders table does not contain any customer information, it only contains CustomerID. The VendorID column is also used in the Products table to avoid repeating vendor details.

Products contains VendorID information and so we have removed it from OrderItems.

### Relationships

Our tables connect using foreign keys.

Vendors MarketID is the new name for Vendors.Vendors is now renamed ManagingMarkets - MarketID.
Vendors to Products: VendorID
OrderID: - CustomerID to
Orders to OrderItems: OrderID
Products to OrderItems: ProductID

### Conclusion

In our database, we have used separate tables and created a relationship between them using keys, which is also known as 3NF. This aids in avoiding duplication of data and to make the database easier to deal with.