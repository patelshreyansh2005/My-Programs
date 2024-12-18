------------------------
--Table valued functions
------------------------


--11.Write a function which returns a table with detail of person whose first name starts with B

create function fn_FirstNameWithB()
returns table
as
	return (select * from Person where FirstName like '%B')

select * from dbo.fn_FirstNameWithB()

--12.Write a function which returns a table with unique first names from person table

create function fn_UniqueFirstName()
returns table
as
	return (select distinct FirstName from Person)

select * from dbo.fn_UniqueFirstName()

--13.Write a function which accepts department ID as a parameter & returns a detail of the persons

create function fn_FindDetail(@ID int)
returns table
as
	return (select * from Person where DepartmentID = @ID)

select * from dbo.fn_FindDetail(1)




