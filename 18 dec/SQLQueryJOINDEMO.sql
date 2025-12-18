CREATE TABLE Departments (
        DeptId INT PRIMARY KEY,
        DeptName VARCHAR(50)
);

CREATE TABLE Employees (
       EmpId INT PRIMARY KEY,
       EmpName VARCHAR(50),
       DeptId INT NULL
);


INSERT INTO Departments VALUES
(1, 'Engineering'),
(2, 'HR'),
(3, 'Finance');

INSERT INTO Employees VALUES
(101, 'Amit', 1),
(102, 'Neha', 2),
(103, 'Rahul', NULL),
(104, 'Sonal', 99);

 
--inerjoin 

SELECT 
  e.EmpName,
  d.Deptname

FROM employees e
INNER JOIN Departments d
ON e.DeptId = d.DeptId;

--left join

SELECT 
  e.EmpName,
  d.Deptname

FROM employees e
LEFT JOIN Departments d
ON e.DeptId = d.DeptId;


--right join

SELECT 
  e.EmpName,
  d.Deptname

FROM employees e
RIGHT JOIN Departments d
ON e.DeptId = d.DeptId;