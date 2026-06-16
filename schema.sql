/* =====================================================
   DATABASE SCHEMA
   Application Support SQL Lab
   ===================================================== */

/* Customers Table */

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    City VARCHAR(100),
    Country VARCHAR(100)
);


/* Products Table */

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    CategoryID INT
);


/* Orders Table */

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Amount DECIMAL(10,2)
);


/* Payments Table */

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    Amount DECIMAL(10,2)
);