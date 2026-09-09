create database amazon_sales_db;
use amazon_sales_db;
CREATE TABLE amazon_sales (
    OrderID VARCHAR(50),
    OrderDate DATETIME,
    CustomerID VARCHAR(50),
    CustomerName VARCHAR(255),
    ProductID VARCHAR(50),
    ProductName VARCHAR(255),
    Category VARCHAR(100),
    Brand VARCHAR(100),
    PaymentMethod VARCHAR(100),
    OrderStatus VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100),
    Country VARCHAR(100),
    SellerID VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(12,2),
    Discount DECIMAL(10,2),
    Tax DECIMAL(12,2),
    ShippingCost DECIMAL(12,2),
    TotalAmount DECIMAL(14,2)
);
amazon_sales_cleaned