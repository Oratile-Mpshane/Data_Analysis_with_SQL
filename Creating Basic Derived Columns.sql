USE AdventureWorks2019;


--Creating Basic Derived Columns - Exercises

--Exercise 1

--Select a derived column from the "Person.Person" table - aliased as "Person Title" - that consists
--of the person's first name, followed by a space, followed by their last name, followed by a 
--hyphen (-), followed by the person type.


SELECT [Person Title] = [FirstName] + ' ' + [LastName] + '-' + [PersonType]
FROM [Person].[Person]



--Exercise 2

--Select all rows from the "HumanResources.Employee" table where "SalariedFlag" = 0. 
--Include the following columns in your output:

--BusinessEntityID
--VacationHours
--SickLeaveHours
--Total Time Off - This is a derived column you will calculate by adding vacation hours and sick leave hours

--Sort the output by total time off, in ascending order.


SELECT [BusinessEntityID],
		[VacationHours],
		[SickLeaveHours],
		[Total Time Off] = [VacationHours] + [SickLeaveHours]
FROM [HumanResources].[Employee]
WHERE [SalariedFlag] = 0
ORDER BY [Total Time Off];


--Exercise 3

--Select all rows from the "HumanResources.EmployeePayHistory" table. 
--Include the following columns in your output:

--BusinessEntityID
--Rate
--Weekly Pay - This is a derived column you will calculate using the employee pay rate 
--from the "Rate" column, and assuming a 40 hour work week.

--Sort the output by amount per paycheck in descending order.


SELECT [BusinessEntityID],
		[Rate],
		[Weekly Pay] = [Rate] * 40 * [PayFrequency]
FROM [HumanResources].[EmployeePayHistory]
ORDER BY [Weekly Pay] DESC;




--Bonus

--Modify your query from Exercise 2 by adding a new derived column called "Total Days Off". 
--This column should build on our math for "Total Time Off" by factoring in an assumed 8 hour workday.


SELECT [BusinessEntityID],
		[VacationHours],
		[SickLeaveHours],
		[Total Time Off] = [VacationHours] + [SickLeaveHours],
		[Total Days Off] = ([VacationHours] + [SickLeaveHours]) /(8 * 0.1)
FROM [HumanResources].[Employee]
WHERE [SalariedFlag] = 0
ORDER BY [Total Time Off];

