USE AdventureWorks2019;


--Matching Text Patterns With Wildcards - Exercises

--Exercise 1

--Select all rows from the Person.Person table where the first name is abbreviated 
--with a period/dot at the end - for example, "A.". 


SELECT * FROM [Person].[Person]
WHERE [FirstName] LIKE '%.';



--Exercise 2

--Select all people from the Person.Person table with the initials "TLC". 


SELECT * FROM [Person].[Person]
WHERE [FirstName] LIKE 'T%' AND 
[MiddleName] LIKE 'L%' AND 
[LastName] LIKE 'C%';



--Exercise 3

--Select all rows from the Person.Person table where the first name does not include 
--a vowel (a, e, i, o, or u).


SELECT * FROM [Person].[Person]
WHERE [FirstName] NOT LIKE '%[aeiou]%';

