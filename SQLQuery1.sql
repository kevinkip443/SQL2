use AdventureWorks2022
SELECT BusinessEntityID FROM HumanResources.Employee
--DISPLAY ONE COLUMN ONLY
--DISPLAYING TWO COLUMNS
SELECT BusinessEntityID, JOBTITLE FROM HumanResources.Employee
SELECT DISTINCT JOBTITLE FROM HumanResources.Employee
SELECT BusinessEntityID,JobTitle
FROM HumanResources.Employee
WHERE JobTitle='ACCOUNTANT'
SELECT COUNT(DISTINCT JOBTITLE) FROM HumanResources.Employee

--CREATE DATABASE
CREATE DATABASE SAMPLE2
USE SAMPLE2
CREATE TABLE CUSTOMER
(
customerid int identity(1,1) primary key,

customernumber int not null unique check(customernumber>0),
lastname varchar(30) not null,
firstname varchar(30) not null,
areacode int default 71000,
address varchar(50),
country varchar(50) default 'malaysia')
insert into customer values
(100,'Fang Ying','Sham','418999','sdadasfdfd',default),
(200,'Mei Mei','Tan',default,'adssdsadsd','Thailand'),
(300,'Albert','John',default,'dfdsfsdf',default)
select* from CUSTOMER
--adding another row
INSERT INTO customer (customernumber, lastname, firstname, address, country) VALUES (1, 'Smith', 'Minoo', '123 Main St','USA'






