-- Create the SalesDB database if it doesn't exist
CREATE DATABASE IF NOT EXISTS SalesDB;

-- Use the SalesDB database
USE SalesDB;

-- Create the SalesData table to store sales information
CREATE TABLE SalesData (
    ProductID INT,
    ProductCategory VARCHAR(50),
    ProductSubcategory VARCHAR(50),
    ProductName VARCHAR(100),
    ProductDescription VARCHAR(255),
    ProductPrice DECIMAL(10,2),
    ProductWeight INT,
    ProductSize VARCHAR(10),
    OrderID INT,
    CustomerID INT,
    OrderDate DATE,
    OrderStatus VARCHAR(20),
    OrderQuantity INT,
    OrderTotal DECIMAL(10,2),
    PaymentMethod VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SHOW TABLES;