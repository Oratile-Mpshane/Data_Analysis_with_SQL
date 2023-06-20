USE AdventureWorks2019;


--Dates and Datetimes in SQL - Exercises
--Exercise 1

--Select the following (not tied to any table in our AdventureWorks database):

--A field called "Today" showing the current day and time

--A field called "This Month", showing the number of the current month

--A field called "This Year", showing the number of the current year.


--All fields above should be calculated via SQL functions.

SELECT [Today] = GETDATE(),
		[This Month] = MONTH(GETDATE()),
		[This Year] = YEAR(GETDATE());


--Exercise 2

--Select all records from the "Purchasing.PurchaseOrderHeader" table where the 
--order date occurred between 1/1/2011 and 7/31/2011 AND the total amount due is 
--greater than $10,000. Include the following columns:

--PurchaseOrderID

--OrderDate

--TotalDue


SELECT [PurchaseOrderID],
		[OrderDate],
		[TotalDue]
FROM [Purchasing].[PurchaseOrderHeader]
WHERE [OrderDate] BETWEEN '1/1/2011' AND '7/31/2011' AND [TotalDue] > 10000;

