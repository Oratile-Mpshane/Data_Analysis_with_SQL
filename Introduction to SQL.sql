USE AdventureWorks2019;

--Introduction to SQL - Exercises
--Exercise 1

--Select the first 3,000 rows from the Person.Person table. 
--Display only the Title, LastName, and FirstName columns, in that order.

SELECT TOP (3000) [Title],
			[LastName],
			[FirstName]

FROM [Person].[Person];



--Exercise 2

--Select the first 500 rows from the Sales.SalesOrderHeader table. 
--Display only the OrderDate, DueDate, ShipDate, and TotalDue columns, in that order.


SELECT TOP (500) [OrderDate],
				[DueDate],
				[ShipDate],
				[TotalDue]

FROM [Sales].[SalesOrderHeader];


--Exercise 3

--Select the first 100 rows from the Sales.SalesPerson table. 
--Display only the SalesLastYear and SalesYTD columns, in that order.


SELECT TOP (100) [SalesLastYear],
				[SalesYTD]

FROM [Sales].[SalesPerson]