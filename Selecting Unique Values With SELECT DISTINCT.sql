USE AdventureWorks2019;


--Selecting Unique Values With SELECT DISTINCT - Exercises

--Exercise 1

--Produce a list of the unique person types in the "Person.Person" table, sorted in ascending order.

SELECT DISTINCT [PersonType]
FROM [Person].[Person]
ORDER BY [PersonType];


--Exercise 2

--Produce a list of the unique full names in the "Person.Person" table - including first name, 
--middle name, and last name. Only include names that have a value for middle name.

--The output should be sorted by last name and then by first name, in ascending order.


SELECT DISTINCT [FirstName],
				[MiddleName],
				[LastName]
FROM [Person].[Person]
WHERE [MiddleName] IS NOT NULL
ORDER BY [LastName], [FirstName];






