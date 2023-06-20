USE AdventureWorks2019;


--The Mighty CASE Statement - Exercises
--Exercise 1

--Select a derived column called "Price Category" from 
--the "Production.Product" table such that:

--If the list price is greater than $1,000, return "Premium".

--If the list price is greater than $100 and less than $1,000, return "Mid-Range".

--If the list price is less than $100, return "Value". This should be the default case.

--Also include Name and ListPrice as columns in your output.

SELECT [Name],
		[ListPrice],
		[Price Category] =   
			CASE 
				WHEN [ListPrice] > 1000
				THEN 'Premium'

				WHEN [ListPrice] > 100 AND [ListPrice] < 1000 
				THEN 'Mid-Range'

				ELSE 'Value'
			END
FROM [Production].[Product]

--Exercise 2

--Select a derived column called "Employee Tenure" from the "HumanResources.Employee" table such that:

--If an employee is salaried, and has been with the company 10 or more years  
--return "Non-Exempt - 10+ Years".

--If an employee is salaried, and has been with the company less than 10 years, 
--return "Non-Exempt - < 10 Years".

--If an employee is NOT salaried, and has been with the company 10 or more years 
--return "Exempt - 10+ Years".

--If an employee is NOT salaried, and has been with the company less than 10 years, 
--return "Exempt - < 10 Years". This should be the default case.

--Also include BusinessEntityID, HireDate, and SalariedFlag as columns in your output.

SELECT [BusinessEntityID],
		[HireDate],
		[SalariedFlag],
		[Employee Tenure] = 
			CASE
				WHEN [SalariedFlag] = 1 AND DATEDIFF(YEAR, [HireDate], GETDATE()) >= 10
				THEN 'Non-Exempt - 10+ Years'

				WHEN [SalariedFlag] = 1 AND DATEDIFF(YEAR, [HireDate], GETDATE()) < 10
				THEN 'Non-Exempt - < 10 Years'

				WHEN [SalariedFlag] = 0 AND DATEDIFF(YEAR, [HireDate], GETDATE()) >= 10
				THEN 'Exempt - 10+ Years'

				ELSE 'Exempt - < 10 Years'
			END
FROM [HumanResources].[Employee]