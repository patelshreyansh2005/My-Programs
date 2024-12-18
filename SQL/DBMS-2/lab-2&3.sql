-----------------------------
--Stored Procedures (Lab – 2)
-----------------------------

--1. All tables Insert

create procedure pr_Department_Indert
	@DepartmentID int,
	@DepartmentName varchar(100)
as
begin
	insert into Department
	(
		DepartmentID,
		DepartmentName
	)
	values
	(
		@DepartmentID,
		@DepartmentName
	)
end

execute pr_Department_Indert 1, 'Admin'
execute pr_Department_Indert 2, 'IT'
execute pr_Department_Indert 3, 'HR'
execute pr_Department_Indert 4, 'Account'

-----------------------

create procedure pr_Designation_Indert
	@DesignationID int,
	@DesignationName varchar(100)
as
begin
	insert into Designation
	(
		DesignationID,
		DesignationName
	)
	values
	(
		@DesignationID,
		@DesignationName
	)
end

execute pr_Designation_Indert 11, 'Jobber'
execute pr_Designation_Indert 12, 'Welder'
execute pr_Designation_Indert 13, 'Clerk'
execute pr_Designation_Indert 14, 'Manager'
execute pr_Designation_Indert 15, 'CEO'

-----------------------

create procedure pr_Person_Indert
	@FirstName varchar(100),
	@LastName varchar(100),
	@Salary int,
	@JoiningDate date,
	@DepartmentID int,
	@DesignationID int

as
begin
	insert into Person
	(
		FirstName,
		LastName,
		Salary,
		JoiningDate,
		DepartmentID,
		DesignationID

	)
	values
	(
		@FirstName,
		@LastName,
		@Salary,
		@JoiningDate,
		@DepartmentID,
		@DesignationID
	)
end


execute pr_Person_Indert 'Rahul', 'Anshu', 56000, '01-01-1990', 1, 12
execute pr_Person_Indert 'Hardik', 'Hinsu', 18000, '09-25-1990', 2, 11
execute pr_Person_Indert 'Bhavin', 'Kamani', 25000, '05-14-1991', NULL, 11
execute pr_Person_Indert 'Bhoomi', 'Patel', 39000, '02-20-2014', 1, 13
execute pr_Person_Indert 'Rohit', 'Rajgor', 17000, '07-23-1990', 2, 15
execute pr_Person_Indert 'Priya', 'Mehta', 25000, '10-18-1990', 2, NULL
execute pr_Person_Indert 'Neha', 'Trivedi', 18000, '02-20-2014', 3, 15



----------------------
--2. All tables Update 
----------------------


create procedure pr_Department_Update
	@DepartmentID int,
	@DepartmentName varchar(100)
as
begin
	update Department
	set
		DepartmentName = @DepartmentName
	where
		DepartmentID = @DepartmentID
end

execute pr_Department_Update 1, 'Admin'

------------------------

create procedure pr_Designation_Update
	@DesignationID int,
	@DesignationName varchar(100)
as
begin
	update Designation
	set
		DesignationName = @DesignationName
	where
		DesignationID = @DesignationID
end

execute pr_Designation_Update 11, 'Jobber'

------------------------------


create procedure pr_Person_Update
	@WorkerID int,
	@FirstName varchar(100)
as
begin
	update Person
	set
		FirstName = @FirstName
	where
		WorkerID = @WorkerID
end

execute pr_Person_Update 101 , 'Rahul'




----------------------
--3. All tables Delete 
----------------------


create procedure pr_Department_Delete
	@DepartmentID int
as
begin
	Delete from Department
	where
		DepartmentID = @DepartmentID
end

execute pr_Department_Delete 1

------------------------

create procedure pr_Designation_Delete
	@DesignationID int
as
begin
	Delete from Designation
	where
		DesignationID = @DesignationID
end

execute pr_Designation_Delete 11

------------------------------


create procedure pr_Person_Delete
	@WorkerID int
as
begin
	Delete from Person
	where
		WorkerID = @WorkerID
end

execute pr_Person_Delete 101



----------------------
--4. All tables SelectPK 
----------------------


create procedure pr_Department_SelectPK
	@DepartmentID int
as
begin
	select DepartmentID,
		   DepartmentName
		   from Department
	where
		DepartmentID = @DepartmentID
end

execute pr_Department_SelectPK 1

------------------------

create procedure pr_Designation_SelectPK
	@DesignationID int
as
begin
	select DesignationID,
		   DesignationName
		   from Designation
	where
		DesignationID = @DesignationID
end

execute pr_Designation_SelectPK 11

------------------------------


create procedure pr_Person_SelectPK
	@WorkerID int
as
begin
	select WorkerID,
		   FirstName
		   from Person
	where
		WorkerID = @WorkerID
end

execute pr_Person_SelectPK 101




----------------------
--5. All tables SelectAll (If foreign key is available than do write join and take columns on select list) 
----------------------


create procedure pr_Department_SelectAll
as
begin
	select 
		DepartmentID,
		DepartmentName
	from Department
end

execute pr_Department_SelectAll

------------------------

create procedure pr_Designation_SelectAll
as
begin
	select DesignationID,
		   DesignationName
		   from Designation
end

execute pr_Designation_SelectAll

------------------------------


create procedure pr_Person_SelectAll
as
begin
	select Person.WorkerID,
		   Person.FirstName,
		   Person.LastName,
		   Person.Salary,
		   Person.JoiningDate,
		   Department.DepartmentName,
		   Designation.DesignationName
		   from Person
		   left outer join Department
		   on Person.DepartmentID = Department.DepartmentID
		   left outer join Designation
		   on Person.DesignationID = Designation.DesignationID
end

execute pr_Person_SelectAll





-----------------------------
--Stored Procedures (Lab – 3)
-----------------------------


--1. Create Procedure that show detail of first 3 persons.
create procedure pr_Show_Top_3
as
begin
	select top 3
		   Person.WorkerID,
		   Person.FirstName,
		   Person.LastName,
		   Person.Salary,
		   Person.JoiningDate,
		   Department.DepartmentName,
		   Designation.DesignationName
		   from Person
		   left outer join Department
		   on Person.DepartmentID = Department.DepartmentID
		   left outer join Designation
		   on Person.DesignationID = Designation.DesignationID
end

execute pr_Show_Top_3

--2. Create Procedure that takes department dame as input and returns a table with all workers working in that department

create procedure pr_Get_Worker_By_DepartmentName
@DepartmentName varchar(50)
as
begin
	select
		   Person.WorkerID,
		   Person.FirstName,
		   Person.LastName,
		   Person.Salary,
		   Person.JoiningDate,
		   Department.DepartmentName,
		   Designation.DesignationName
		   from Person
		   left outer join Department
		   on Person.DepartmentID = Department.DepartmentID
		   left outer join Designation
		   on Person.DesignationID = Designation.DesignationID
		   where DepartmentName = @DepartmentName
end

execute pr_Get_Worker_By_DepartmentName 'Admin'


--3. Create Procedure that takes department name & designation name as input and returns a table with worker’s first name, salary, joining date & department name

create procedure pr_Get_Worker_By_DepartmentName_And_DesignationName
@DepartmentName varchar(50),
@DesignationName varchar(50)
as
begin
	select
		   Person.WorkerID,
		   Person.FirstName,
		   Person.LastName,
		   Person.Salary,
		   Person.JoiningDate,
		   Department.DepartmentName,
		   Designation.DesignationName
		   from Person
		   left outer join Department
		   on Person.DepartmentID = Department.DepartmentID
		   left outer join Designation
		   on Person.DesignationID = Designation.DesignationID
		   where DepartmentName = @DepartmentName and DesignationName = @DesignationName
end

execute pr_Get_Worker_By_DepartmentName_And_DesignationName 'IT','CEO'


--4. Create Procedure that takes first name as an input parameter and display all the details of the worker with their department & designation name

create procedure pr_Get_Worker_By_FirstName
@FirstName varchar(50)
as
begin
	select
		   Person.WorkerID,
		   Person.FirstName,
		   Person.LastName,
		   Person.Salary,
		   Person.JoiningDate,
		   Department.DepartmentName,
		   Designation.DesignationName
		   from Person
		   left outer join Department
		   on Person.DepartmentID = Department.DepartmentID
		   left outer join Designation
		   on Person.DesignationID = Designation.DesignationID
		   where FirstName = @FirstName
end

execute pr_Get_Worker_By_FirstName 'priya'

--5. Create Procedure which displays department wise maximum, minimum & total salaries

Alter procedure pr_Get_Department_wise_Max_Min_Total_Salaries
as
begin
	select
		   Department.DepartmentName,
		   min(Salary) as [Minimum Salary],
		   max(Salary) as [Maximum Salary],
		   sum(Salary) as [Total Salary]
		   from Person
		   left outer join Department
		   on Person.DepartmentID = Department.DepartmentID
		   group by Department.DepartmentName
end

execute pr_Get_Department_wise_Max_Min_Total_Salaries

--6. Create Procedure which displays designation wise maximum, minimum & total salaries

alter procedure pr_Get_Designation_wise_Max_Min_Total_Salaries
as
begin
	select
		   DesignationName,
		   min(Salary) as [Minimum Salary],
		   max(Salary) as [Maximum Salary],
		   sum(Salary) as [Total Salary]
		   from Person
		   left outer join Designation
		   on Person.DesignationID = Designation.DesignationID
		   group by DesignationName
end

execute pr_Get_Designation_wise_Max_Min_Total_Salaries





