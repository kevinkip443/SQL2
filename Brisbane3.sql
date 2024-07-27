
select * from information_schema.tables

SELECT * FROM customer

SELECT * FROM employee

SELECT * FROM inventory

SELECT * FROM sale

-- CASE STATEMENT


CREATE TABLE Employees (
  EmployeeID INT,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Salary DECIMAL(10, 2),
  Department VARCHAR(50)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Salary, Department)
VALUES
  (1, 'John', 'Doe', 50000.00, 'Sales'),
  (2, 'Jane', 'Doe', 60000.00, 'Marketing'),
  (3, 'Bob', 'Smith', 70000.00, 'Sales'),
  (4, 'Sally', 'Jones', 80000.00, 'Marketing'),
  (5, 'Tom', 'Williams', 90000.00, 'Sales');


  --now onto the case statement
 SELECT EmployeeID, FirstName, LastName, Salary,
  CASE
    WHEN Salary < 60000 THEN 'Low'
    WHEN Salary >= 60000 AND Salary < 80000 THEN 'Medium'
    ELSE 'High'
  END AS SalaryRange,
  Department
FROM Employees;


--CASE statement for filling missing values
CREATE TABLE Sales (
  SaleID INT PRIMARY KEY,
  ProductName VARCHAR(50),
  SaleDate DATE,
  SaleAmount DECIMAL(10, 2)
);

INSERT INTO Sales (SaleID, ProductName, SaleDate, SaleAmount) VALUES
  (1, 'Product A', '2022-01-01', 100.00),
  (2, 'Product B', '2022-01-02', 200.00),
  (3, 'Product C', '2022-01-03', NULL),
  (4, 'Product D', '2022-01-04', 400.00),
  (5, 'Product E', '2022-01-05', NULL),
  (6, 'Product F', '2022-01-06', NULL),
  (7, 'Product G', '2022-01-07', 700.00),
  (8, 'Product H', '2022-01-08', 800.00),
  (9, 'Product I', '2022-01-09', NULL),
  (10, 'Product J', '2022-01-10', 1000.00);

  Select * from sales


  -- the case statement now
SELECT ProductName, CASE
    WHEN SaleAmount IS NULL THEN 0
    ELSE SaleAmount
END AS SalesAmount
FROM Sales


UPDATE Sales
SET SaleAmount = (
    CASE
        WHEN SaleAmount IS NULL THEN (
            SELECT AVG(SaleAmount)
            FROM Sales
            WHERE SaleAmount IS NOT NULL
        )
        ELSE SaleAmount
    END
);

SELECT * from Sales


CREATE TABLE EmployeeUpgrade (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    JobTitle VARCHAR(50),
    Salary DECIMAL(10, 2),
   Employee_Level INT
);


Insert Into EmployeeUpgrade(EmployeeID, FirstName, LastName, JobTitle, Salary, Employee_Level)
Values (1, 'John', 'Doe', 'Manager', 50000.00, 3),
       (2, 'Jane', 'Smith', 'Engineer', 40000.00, 2),
       (3, 'Bob', 'Johnson', 'Analyst', 30000.00, 1),
       (4, 'Sue', 'Lee', 'Engineer', 45000.00, 2),
       (5, 'Jim', 'Kim', 'Manager', 55000.00, 3);

	   -- 

	   drop table EmployeeUpgrade

	   SELECT * FROM EmployeeUpgrade


SELECT EmployeeID, FirstName, LastName, JobTitle, Salary,
       CASE
           WHEN JobTitle = 'Manager' THEN Salary * 1.1
           WHEN JobTitle = 'Engineer' THEN Salary * 1.05
           ELSE Salary * 1.02
       END AS NewSalary
FROM EmployeeUpgrade;




