CREATE TABLE Customers (
        CustomerId  INT PRIMARY KEY,
        CustomerName  VARCHAR(50),
        City VARCHAR(50)
);

CREATE TABLE Orders (
          OrderId INT PRIMARY KEY,
          OrderAmount  DECIMAL(10,2),
          CustomerId int NULL
);


INSERT INTO Customers VALUES
(1, 'Amit', 'Hyderabad'),
(2, 'Neha', 'Bangalore'),
(3, 'Rahul', 'Delhi'),
(4, 'Priya', 'Mumbai');

INSERT INTO Orders VALUES
(1001, 5000, 1),
(1002, 12000, 1),
(1003, 7000, 2),
(1004, 9000, NULL),
(1005, 15000, 99);


--fetch all Customers

SELECT * FROM Customers

-- insert a new customer suresh from chennai

INSERT INTO Customers (CustomerId, CustomerName, City)
VALUES
(5, 'Suresh', 'Chennai');

--update priya city to pune

UPDATE Customers
SET City = 'Pune'
WHERE CustomerName = 'Priya';

--delete customer Rahul

DELETE FROM Customers
WHERE CustomerName = 'Rahul';

--fetch customers from bangalore

SELECT *
FROM Customers
WHERE City = 'Bangalore'

--customer name and order amount for customers who placed orders

SELECT c.Customername, o.OrderAmount
FROM Customers c
INNER JOIN Orders o
ON c.CustomerId = o.CustomerId;

--all customers with their order amounts (include customers with no orders)

SELECT o.OrderId, o.OrderAmount, c.CustomerName
FROM Orders o
LEFT JOIN Customers c
ON o.CustomerId = c.CustomerId;

--all orders with customer names (include orders without customers)

SELECT o.OrderId, o.OrderAmount, c.CustomerName
FROM Orders o
LEFT JOIN Customers c
ON o.CustomerId = c.CustomerId;

--list customers who have not placed any orders

SELECT c.Customername
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerId = o.CustomerId
WHERE o.OrderId IS NULl;

--list orders that do not belong to any valid customer

SELECT o.OrderId, o.OrderAmount, c.CustomerId
FROM Orders o
LEFT JOIN Customers c
ON o.CustomerId = c.CustomerId
WHERE c.CustomerId IS NULl;