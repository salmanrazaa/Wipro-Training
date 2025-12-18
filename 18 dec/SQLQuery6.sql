CREATE TABLE Product (
           ProdId INT IDENTITY(1,1) PRIMARY KEY,
           ProdcutName VARCHAR(50) NOT NULL,
           ProductBrand VARCHAR(100) NOT NULL,
           ManuDate  DATE,
           ExpDate   DATE,
           Price INT
);

INSERT INTO Product (ProdcutName, ProductBrand, ManuDate, Expdate, Price)
VALUES
    ('Laptop', 'Dell', '2024-10-11', '2027-10-12', 65000),
    ('Phones', 'Samsung', '2024-10-25', '2027-10-12', 70000),
    ('Headphones', 'Sony', '2024-10-12', '2028-10-12', 80000),
    ('Watch', 'Apple', '2024-10-12', '2027-12-20', 50000),  
    ('Keyboard', 'Logitech', '2024-10-14', '2027-11-10', 30000),
    ('Mouse', 'HP', '2024-11-05', '2028-11-10', 20000),
    ('Printer', 'Canon', '2024-11-12', '2027-10-08', 25000),
    ('Tablet', 'Lenovo', '2023-10-11', '2028-10-03', 35000),
    ('Monitor', 'LG', '2024-11-09', '2028-12-06', 40000),
    ('Router', 'TP-Link', '2023-10-12', '2027-05-09', 15000);

    UPDATE Product
    SET ProdcutName = 'Charger'

    WHERE ProdcutName = 'Laptop';


    DELETE FROM Product
    WHERE ProdcutName = 'Watch';

    SELECT * FROM Product