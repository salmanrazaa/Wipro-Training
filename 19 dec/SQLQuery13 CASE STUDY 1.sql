CREATE TABLE Departments (
     DeptId  INT IDENTITY(1,1) PRIMARY KEY,
     DeptName VARCHAR(50) NOT NULL,
     Location VARCHAR(50)
);

CREATE TABLE Employees (
     EmpId INT IDENTITY(1,1) PRIMARY KEY,
     EmpName VARCHAR(50) NOT NULL,
     Email VARCHAR(100),
     Salary DECIMAL(10,2),
     JoinDate DATE,
     DeptId INT
);

ALTER TABLE Employees
ADD Status VARCHAR(20);

ALTER TABLE Employees
ALTER COLUMN EmpName VARCHAR(100);

ALTER TABLE Employees
DROP COLUMN Email;

DROP TABLE Departments;


CREATE INDEX IDX_EmpName
ON Employees(EmpName)


CREATE INDEX IDX_DeptId
ON Employees(DeptId)


SELECT EmpName, DeptId
FROM Employees
WHERE DeptId = 1;