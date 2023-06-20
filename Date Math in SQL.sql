USE AdventureWorks2019;


--Date Math in SQL - Exercises
--Exercise 1

--Use date math in conjunction with GETDATE to calculate what date is 100 days from now.

SELECT [100 Days From Now] = GETDATE() + 100;

--OR 

SELECT [100 Days From Now] = DATEADD(DAY, 100, GETDATE());

--Exercise 2

--Use DATEADD to calculate what date is 6 months from now.


SELECT [Six Months From Now] = DATEADD(MONTH, 6 , GETDATE());



--Exercise 3

--Use DATEDIFF to select all rows from the "Sales.SalesOrderHeader" table where the 
--order date is 7 or less days before 12/25/2013. Note that it is possible for DATEDIFF to 
--output a negative number if the "end" date is prior to your "start" date, so you may want 
--to use BETWEEN instead of <= in your criteria. 


SELECT *
FROM [Sales].[SalesOrderHeader]
WHERE DATEDIFF(DAY, [OrderDate], DATEFROMPARTS(2013, 12, 25)) BETWEEN 0 AND 7



				
--Bonus

--Modify your query from Exercise 3 to work for ANY year, not just 2013.


SELECT *
FROM [Sales].[SalesOrderHeader]
WHERE DATEDIFF(DAY, [OrderDate], DATEFROMPARTS(YEAR([OrderDate]), 12, 25)) BETWEEN 0 AND 7

