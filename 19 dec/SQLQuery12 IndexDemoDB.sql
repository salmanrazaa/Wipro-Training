CREATE TABLE Employees (
     EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
     EmployeeName  VARCHAR(100),
     Department VARCHAR(100),
     Salary INT
);

INSERT INTO Employees ( EmployeeName, Department, Salary)
VALUES
('Amit', 'IT', 60000),
('Neha', 'HR', 50000),
('Rahul', 'Finance', 70000),
('Priya', 'IT', 65000),
('Sonal', 'HR', 48000),
('Karan', 'IT', 72000),
('Ankita', 'Finance', 68000),
('Vikram', 'IT', 80000);

SELECT * FROM Employees
WHERE Department = 'IT'


CREATE INDEX idx_Employees_Department
ON Employees(Department);


EXEC sp_helpindex 'Employees';