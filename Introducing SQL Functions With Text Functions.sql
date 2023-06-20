USE AdventureWorks2019;


--Introducing SQL Functions With Text Functions - Exercises

--Exercise 1

--Select the following columns (all rows) from the "Sales.CreditCard" table:

--CardNumber

--Last Four Digits - a derived column with just the last four digits of the credit card number


SELECT [CardNumber],
		[Last Four Digits] = RIGHT([CardNumber],4)
FROM [Sales].[CreditCard];



--Exercise 2

--Select the following columns (all rows) from the "Production.ProductReview" table:

--ReviewerName

--Comments

--Cleaned Comments - a derived column in which all commas from the "Comments" field have been 
--replaced with empty strings


SELECT [ReviewerName],
		[Comments],
		[Cleaned Comments] = REPLACE([Comments],',','')
FROM [Production].[ProductReview];



--Exercise 3

--Select the "FirstName" and "LastName" columns from the "Person.Person" table. 
--Only include rows where the length of the last name is greater than or equal to 10 characters.


SELECT [FirstName],
		[LastName]
FROM [Person].[Person]
WHERE LEN([LastName]) >= 10;



--Bonus

--Sort the output of Exercise 3 by the length of the last name in descending order.


SELECT [FirstName],
		[LastName]
FROM [Person].[Person]
WHERE LEN([LastName]) >= 10
ORDER BY LEN([LastName]) DESC;


