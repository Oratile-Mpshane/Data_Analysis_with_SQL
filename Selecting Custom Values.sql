USE AdventureWorks2019;

--Selecting Custom Values - Exercises
--Exercise 1

--Write a query that selects your first name and age. 
--Name the columns “First Name”, and “Age”, respectively.


SELECT [first Name] = 'Oratile', [Age] = 23;


--Exercise 2

--Write a query that outputs:

--All columns from the Sales.SalesOrderHeader table EXCEPT “rowguid” and “ModifiedDate”.

--A column called “Query Run By” that outputs your first name. 
--This should be the first column in the query output.

--The query should only output the top 5000 rows from the table.


SELECT TOP (5000) [Query Run By] = 'Oratile'
				  ,[SalesOrderID]
				  ,[RevisionNumber]
				  ,[OrderDate]
				  ,[DueDate]
				  ,[ShipDate]
				  ,[Status]
				  ,[OnlineOrderFlag]
				  ,[SalesOrderNumber]
				  ,[PurchaseOrderNumber]
				  ,[AccountNumber]
				  ,[CustomerID]
				  ,[SalesPersonID]
				  ,[TerritoryID]
				  ,[BillToAddressID]
				  ,[ShipToAddressID]
				  ,[ShipMethodID]
				  ,[CreditCardID]
				  ,[CreditCardApprovalCode]
				  ,[CurrencyRateID]
				  ,[SubTotal]
				  ,[TaxAmt]
				  ,[Freight]
				  ,[TotalDue]
				  ,[Comment]

FROM [Sales].[SalesOrderHeader];

