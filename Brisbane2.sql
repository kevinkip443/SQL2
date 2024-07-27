

select * from information_schema.tables

SELECT * FROM customer

SELECT * FROM employee

SELECT * FROM inventory

SELECT * FROM sale



select * from customer
where CustomerLastName like 'S%'


-- COUNT FUNCTION()

select COUNT(*) from customer
where CustomerLastName like 'S%'


-- COUNT FUNCTION() WITH AN ALIAS COLUMN

select COUNT(*) as [number of records] from customer
where CustomerLastName like 'S%'



-- SUM FUNCTION()

select sale.EmployeeID ,EmployeeFirstName, EmployeeLastName , count(*) as
[Number of order] ,
sum(SaleQuantity) as [Total Quantity]
from sale,employee
where sale.EmployeeID = employee.EmployeeID
group by sale.EmployeeID ,EmployeeFirstName, EmployeeLastName


--count month
select month(saledate) as [Month], count ( * ) as [Number of sale],
sum(salequantity*saleunitprice) as [Total Amount]
from sale
group by month(saledate)



--MAX
SELECT MAX(sale.SaleQuantity)
FROM sale


SELECT MAX(sale.SaleQuantity) as [saleQuantity]
FROM sale


--MAX
SELECT MAX(sale.SaleQuantity) as [Max Q Sold]
FROM sale


--MAX
SELECT MAX(sale.SaleQuantity) as [MAXIMUM_SALE]
FROM sale


--MIN
SELECT MIN(sale.SaleQuantity) as [minimum sale quantity]
FROM sale


SELECT MIN(sale.SaleQuantity) as[ minimum salequantity]
FROM sale


--AVERAGE
SELECT AVG(sale.SaleQuantity)
FROM sale





CREATE TABLE Orders (
  OrderID INT,
  CustomerID INT,
  OrderDate DATE,
  TotalAmount DECIMAL(10, 2)
);


INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
  (1, 1, '2022-01-01', 100.00),
  (2, 2, '2022-01-02', 200.00),
  (3, 1, '2022-01-03', 150.00),
  (4, 3, '2022-01-04', 50.00),
  (5, 2, '2022-01-05', 75.00),
  (6, 1, '2022-01-06', 125.00),
  (7, 3, '2022-01-07', 100.00),
  (8, 2, '2022-01-08', 225.00),
  (9, 1, '2022-01-09', 175.00),
  (10, 3, '2022-01-10', 75.00);

  SELECT * FROM Orders


  SELECT CustomerID, SUM(TotalAmount) AS TotalSpent
FROM Orders
GROUP BY CustomerID
HAVING SUM(TotalAmount) > 300;