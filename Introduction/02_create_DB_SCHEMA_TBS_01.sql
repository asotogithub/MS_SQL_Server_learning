--- 
-- CREATE DATABASE, SCHEMAS
-- NOTE: THE SCHEMAS IS USING TO ORGANOZATION OF THE TABLES AND OTHERS OBJECTS THAT WE CAN TO CREATE IN THE DATABASE.
--     We have been create a database with some schemas to display the examples.
---

CREATE DATABASE DB_NEW_DB;
GO
USE DB_NEW_DB;
GO
CREATE SCHEMA SALES;
GO
CREATE SCHEMA ACCOUNTS;
GO
CREATE SCHEMA DWH;
GO
CREATE SCHEMA INVENTORY;
GO
CREATE SCHEMA BILLING ;
GO
CREATE SCHEMA HR;
GO

----------------------------------------------
--------- CREATE TABLES ----------------------
----------------------------------------------
CREATE TABLE Sales.Customers (
    CustomerId INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) UNIQUE,
    CreatedAt DATETIME DEFAULT GETDATE()
);


CREATE TABLE Sales.Orders (
    OrderId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerId INT NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE(),
    TotalAmount DECIMAL(10,2),
    CONSTRAINT FK_Orders_Customers
        FOREIGN KEY (CustomerId)
        REFERENCES Sales.Customers(CustomerId)
);


CREATE TABLE HR.Employees (
    EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10,2)
);
CREATE TABLE Inventory.Products (
    ProductId INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(100) NOT NULL,
    Price DECIMAL(10,2),
    Stock INT DEFAULT 0
);
