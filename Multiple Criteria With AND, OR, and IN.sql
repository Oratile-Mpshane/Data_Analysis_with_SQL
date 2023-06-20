USE AdventureWorks2019;



--Multiple Criteria With AND, OR, and IN - Exercises

--Exercise 1

--Select all people from the “Person.Person” table with a first name of “Laura” 
--and a last name of “Norman”. Include only the following columns in your output:

--PersonType
--Title
--FirstName
--LastName


SELECT [PersonType],
		[Title],
		[FirstName],
		[LastName]
FROM [Person].[Person]
WHERE [FirstName] = 'Laura'
AND [LastName] = 'Norman';



--Exercise 2

--Modify your query from Exercise 1 as follows: Change your criteria to only look for 
--records where the person type is either “SP”, “EM”, or “VC”.


SELECT [PersonType],
		[Title],
		[FirstName],
		[LastName]
FROM [Person].[Person]
WHERE [PersonType] = 'SP'
OR [PersonType] = 'EM' 
OR [PersonType] = 'VC';  --could've also used the IN keyword



--Exercise 3

--Streamline your WHERE statement from Exercise 2 by utilizing the IN keyword.


SELECT [PersonType],
		[Title],
		[FirstName],
		[LastName]
FROM [Person].[Person]
WHERE [PersonType] IN('SP','EM','VC');


