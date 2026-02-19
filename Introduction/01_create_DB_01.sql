--CREATE DATABASE IF NOT EXIST DB_CURSO;
--GO

USE BD_CURSO;
GO

CREATE TABLE Customers (
    CustomerId INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    CreatedAt DATETIME DEFAULT GETDATE()
);

CREATE TABLE Products (
    ProductId INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

CREATE TABLE Orders (
    OrderId INT PRIMARY KEY IDENTITY(1,1),
    CustomerId INT,
    OrderDate DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
);

CREATE TABLE OrderDetails (
    OrderDetailId INT PRIMARY KEY IDENTITY(1,1),
    OrderId INT,
    ProductId INT,
    Quantity INT,
    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId),
    FOREIGN KEY (ProductId) REFERENCES Products(ProductId)
);


-- insert

INSERT INTO Customers (FirstName, LastName, Email)
VALUES ('Abel', 'Soto', 'abel.soto@email.com');

commit;


DECLARE @FirstName NVARCHAR(50) = 'Laura';
DECLARE @LastName NVARCHAR(50) = 'Martinez';
DECLARE @Email NVARCHAR(100) = 'laura.martinez@email.com';

INSERT INTO Customers (FirstName, LastName, Email)
VALUES (@FirstName, @LastName, @Email);



select * from Customers;

---
-- Insert doesn't need a commit command after to execute the instruction. ***(IMPLICT TRANSACTION)***
---
USE BD_CURSO;
GO
INSERT INTO Customers (FirstName, LastName, Email)
VALUES ('Luis', 'Ramirez', 'luis@email.com');


---
-- Transaction (EXPLICIT)******
---


BEGIN TRANSACTION;

INSERT INTO Customers (FirstName, LastName, Email)
VALUES ('Sofia', 'Diaz', 'sofia@email.com');

COMMIT;

---
--  Insert multiples rows
---

DECLARE @NewIds TABLE (CustomerId INT);

INSERT INTO Customers (FirstName, LastName, Email)
OUTPUT INSERTED.CustomerId INTO @NewIds
VALUES ('Carlos','Flores', 'car@gmail.com'), ('Ana', 'Bana', 'bana@free.com');

SELECT * FROM @NewIds;



use BD_CURSO;

BEGIN TRANSACTION;
select * from Orders;
select * from OrderDetails;

INSERT INTO Orders (...) VALUES (...);
INSERT INTO OrderDetails (...) VALUES (...);

COMMIT;

