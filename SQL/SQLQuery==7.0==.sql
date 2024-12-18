--1. Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS Today_Date
--2. Write a query to find new date after 365 day with reference to today.
SELECT DATEADD(DAY,365,GETDATE())
--3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT CONVERT(VARCHAR(20),GETDATE())
--4. Display the current date in a format that appears as 03 Jan 1995.
SELECT CONVERT(VARCHAR(20),GETDATE(),106)
--5. Display the current date in a format that appears as Jan 04, 96.
SELECT CONVERT(VARCHAR(20),GETDATE(),107)
--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT (DATEDIFF(MONTH,'31-Dec-08',' 31-Mar-09'))
--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
SELECT (DATEDIFF(YEAR,'25-Jan-12 ',' 14-Sep-10'))
--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT (DATEDIFF(HOUR,'25-Jan-12 7:00','26-Jan-12 10:30'))
--9. Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT DAY('12-May-16'),MONTH('12-May-16'),YEAR('12-May-16')
--10. Write a query that adds 5 years to current date.
SELECT DATEADD(YEAR,5,GETDATE())
--11. Write a query to subtract 2 months from current date.
SELECT DATEADD(MONTH,-2,GETDATE())
--12. Extract month from current date using datename () and datepart () function.
SELECT DATEPART(MONTH,GETDATE()),DATENAME(MONTH,GETDATE())
--13. Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE())
--14. Write a query to display date & time after 30 days from today.
SELECT DATEADD(DAY,30,GETDATE())
--15. Calculate your age in years and months.
SELECT DATEDIFF(YEAR,'2005-02-21',GETDATE()),DATEDIFF(MONTH,'2005-02-21',GETDATE())
