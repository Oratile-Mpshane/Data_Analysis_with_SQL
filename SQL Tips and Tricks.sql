USE AdventureWorks2019;


--SQL Tips and Tricks - Exercises
--Exercise 1

--Select all columns AND rows from the “Sales.Customer” table .


SELECT * FROM [Sales].[Customer];


--Exercise 2

--Select all columns and the top 100 rows from the “Production.Product” table.

SELECT TOP (100) *

FROM [Production].[Product];


--Exercise 3

--Copy and paste the queries from the first two exercises into a single query editor window, one below the other. 
--Try running them individually, and then both at the same time.


SELECT * FROM [Sales].[Customer];

----

SELECT TOP (100) *

FROM [Production].[Product];
