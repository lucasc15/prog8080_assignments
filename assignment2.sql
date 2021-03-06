/************************************
		PROG8080 Assignment 2 
	Submitted by: Lucas Currah
	Student Number: 7674542
	Date: 2016-09-18
 ************************************/

PRINT 'Question 1'
PRINT ''
SELECT DATALENGTH(firstName) as "First Name Length"
	FROM Person
	GROUP BY DATALENGTH(firstName)
	ORDER BY DATALENGTH(firstName) DESC

PRINT 'Question 2'
PRINT ''
SELECT firstName, LEFT(firstName,1) as 'First Initial',
	LOWER(LEFT(firstName,1)) as 'Lower First Initial'
	FROM Person
	WHERE LEFT(firstName, 1) = 'P'
	ORDER BY firstName ASC

PRINT 'Question 3'
PRINT ''
SELECT lastName, SUBSTRING(lastName, 0, 7) as 'First Seven', 
	LOWER(SUBSTRING(lastName, 1, 7)) as 'Lower First Seven'
	FROM Person 
	WHERE SUBSTRING(lastName, 1, 1) = 'P'
	ORDER BY lastName ASC

PRINT 'Question 4'
PRINT ''
SELECT LOWER(CONCAT(LEFT(firstName, 1), SUBSTRING(lastName, 1, 7))) AS "User ID"
	FROM Person
	WHERE LEFT(lastName, 1) = 'P'

PRINT 'Question 5'
PRINT ''
SELECT number, name as "Course Name"
	FROM Course 
	WHERE CHARINDEX('Database', name, 0) > 0

PRINT 'Question 6'
PRINT ''
SELECT cast(GETDATE() as DATE) as "TODAY", 
	cast(DATEADD(day, 30, GETDATE()) as DATE) as "30 Days",
	cast(DATEADD(day, 60, GETDATE()) as DATE) as "60 Days",
	cast(DATEADD(day, 90, GETDATE()) as DATE) as "90 Days",
	cast(DATEADD(day, 120, GETDATE()) as DATE) as "120 Days"

PRINT 'Question 7 (a)'
PRINT ''
SELECT CONCAT(
	'Employee Number: ', e.number, 
	' Year: ', YEAR(p.birthDate),
	' Month: ', MONTH(p.birthDate),
	' Day: ', DAY(p.birthDate)
	)
	FROM Employee as e
	INNER JOIN Person as p ON p.number = e.number
	ORDER BY p.birthdate ASC

PRINT 'Question 7 (b)'
PRINT ''
SELECT CONCAT(
	'Employee Number: ', e.number, 
	' Year: ', DATEPART(yyyy, p.birthDate),
	' Month: ', DATEPART(m, p.birthDate),
	' Day: ', DATEPART(d, p.birthDate)
	)
	FROM Employee as e
	INNER JOIN Person as p ON p.number = e.number
	ORDER BY p.birthdate ASC

