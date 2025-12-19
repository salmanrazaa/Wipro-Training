CREATE TABLE Products (
     ProductId INT PRIMARY KEY,
     ProductName  VARCHAR(50),
     Price int
);

CREATE TABLE Orders (
       OrderId INT PRIMARY KEY,
       ProductId INT,
       OrderDate DATE
);


INSERT INTO Products VALUES
(1, 'Laptop', 60000),
(2, 'Phones', 70000),
(3, 'Keyboard', 30000),
(4, 'Mouse', 10000)

INSERT INTO Orders VALUES
(101, 1, '2025-12-10'),
(102, 2, '2025-08-05'),
(103, 3, '2025-10-04')


--inner join
SELECT 
  p.ProductName, p.Price, o.OrderDate, o.OrderId
FROM Products p
INNER JOIN Orders o
ON P.ProductId = o.ProductId;

--right join
SELECT 
  p.ProductName, p.Price, o.OrderDate, o.OrderId
FROM Products p
RIGHT JOIN Orders o
ON P.ProductId = o.ProductId;

--left join

SELECT 
  p.ProductName, p.Price, o.OrderDate, o.OrderId
FROM Products p
LEFT JOIN Orders o
ON P.ProductId = o.ProductId;