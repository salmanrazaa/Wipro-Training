CREATE TABLE Customers (
      CustomerId INT IDENTITY(1,1) PRIMARY KEY,
      CustomerName VARCHAR(100),
      Email VARCHAR(100)
);

CREATE TABLE Orders (
      OrderId INT IDENTITY(1,1) PRIMARY KEY,
      OrderDate DATE,
      Amount DECIMAL,
      CustomerId INT
);

ALTER TABLE Orders
ADD OrderStatus VARCHAR(50);


DROP TABLE Orders;



CREATE TABLE Orders (
      OrderId INT IDENTITY(1,1) PRIMARY KEY,
      OrderDate DATETIME,
      Amount DECIMAL(12,2),
      OrderStatus VARCHAR(20),
      CustomerId INT
);


CREATE INDEX IDX_CustomerId
ON Orders(CustomerId);

CREATE INDEX IDX_OrderAmount
ON Orders(Amount);

SELECT OrderId, Amount
FROM Orders
WHERE Amount > 500;