/********************************************
		PROG8080 Assignment 1
	Submitted by: Lucas Currah
	Student Number: 7674542
	Date: 2016-09-18

*********************************************/

PRINT 'Question 1'
PRINT ''

SELECT * 
	FROM AcademicStatus

PRINT 'Question 2'
PRINT ''

SELECT number, AcademicStatusCode 
	FROM Student
	WHERE academicStatusCode = 'D'

PRINT 'Question 3'
PRINT ''

SELECT number, AcademicStatusCode
	FROM Student
	WHERE academicStatusCode = 'D' OR academicStatusCode = 'S'

PRINT 'Question 4'
PRINT ''

SELECT number, AcademicStatusCode
	FROM Student
	WHERE NOT academicStatusCode = 'N'
	ORDER BY number ASC

PRINT 'Question 5'
PRINT ''

SELECT number, AcademicStatusCode
	FROM Student
	WHERE academicStatusCode != 'N'
	ORDER BY number ASC

PRINT 'Question 6'
PRINT ''

SELECT DISTINCT countryCode
	FROM Person

PRINT 'Question 7'
PRINT ''

SELECT item as 'Incidental Fee Item', amountPerSemester as 'Current Fee', 
	amountPerSemester*1.10 as 'Increased Fee' 
	FROM IncidentalFee
	ORDER BY item ASC

PRINT 'Question 8'
PRINT ''

SELECT * 
	FROM CourseStudent
	WHERE 0 < finalMark AND finalMark < 55
	
PRINT 'Question 9'
PRINT ''

SELECT number
	FROM Room
	WHERE capacity >= 40 AND memory = '4GB'

PRINT 'Question 10'
PRINT ''

SELECT *
	FROM Employee 
	WHERE schoolCode = 'TAP' AND campusCode = 'D'