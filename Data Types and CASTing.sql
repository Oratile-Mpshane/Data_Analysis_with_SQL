USE AdventureWorks2019;


--Data Types and CASTing - Exercises
--Exercise 1

--Calculate yesterday's date dynamically via GETDATE. 
--Convert the value to a DATE datatype, 
--such that it has no timestamp component.

SELECT [Yesterday's Date] = DATEADD(DAY, -1, CAST(GETDATE() AS DATE));


--Exercise 2

--Calculate the number of days between the current date 
--and the end of the current year via DATEDIFF. 
--Use the CAST function to create the end-of-year date.

SELECT [CurrentDate] = CAST(GETDATE() AS date),
		[EndYearDate] = CAST(DATEFROMPARTS(YEAR(GETDATE()), 12, 31) AS date),
		[RemainingDays_TillYearEnd] = DATEDIFF(DAY, GETDATE(), CAST(DATEFROMPARTS(YEAR(GETDATE()), 12, 31) AS date))


--Exercise 3

--Select all rows from the "Person.Person" table where the middle name is not NULL, 
--AND either the title is not NULL OR the suffix is not NULL. Include the following columns:

--Title
--FirstName
--MiddleName
--LastName
--Suffix

--PersonID - a derived column created by combining the person type, a hyphen(-), 
--and the business entity ID, in that order.

SELECT [Title],
	[FirstName],
	[LastName],
	[MiddleName],
	[Suffix],
	[PersonID] = [PersonType] + '-' + CAST([BusinessEntityID] AS varchar)
FROM [Person].[Person]
WHERE [MiddleName] IS NOT NULL
		AND ([Title] IS NOT NULL OR [Suffix] IS NOT NULL);


