---------------------------Scalar valued functions-------------------------


--1. Write a function to print "hello world".

create function fn_hello()
returns varchar(20)
as
begin
return 'Hello World'
end

select dbo.fn_hello()

--2. Write a function which returns addition of two numbers.

create function fn_add(@num1 decimal(38,4),@num2 decimal(38,4))
returns decimal(38,4)
as
begin
return @num1 + @num2
end

select dbo.fn_add(3.22,3.44)

--3. Write a function to print cube of given number.

create function fn_cube(@num1 decimal(38,4))
returns decimal(38,4)
as
begin
return @num1*@num1*@num1
end

select dbo.fn_cube(3)

--4. Write a function to check where given number is ODD or EVEN.

create function fn_evenodd(@num1 int)
returns varchar(20)
as
begin
	if(@num1%2=0)
		return 'number is even'
	return 'number is odd'
end

select dbo.fn_evenodd(9)

--5. Write a function to compare two integers and returns the comparison result. (Using Case statement)

create function fn_compare(@num1 int , @num2 int)
returns varchar(50)
as
begin
	return(
	case
		when @num1>@num2 then 'number 1 is bigger then number 2'
		when @num2>@num1 then 'number 2 is bigger then number 1'
	end
	)
	return 'number 1 = number 2'
end

select dbo.fn_compare(5,3)

--6. Write a function to print number from 1 to N. (Using while loop)

create function fn_printnum(@num int)
returns varchar(1000)
as
begin
 declare @i as int
 declare @str as varchar(1000)
 set @i = 1
 set @str = ''
 while @i<@num
	begin
		set @str = @str+ ', ' + cast(@i as varchar)
		set @i = @i + 1
	end
return @str
end

select dbo.fn_printnum(10)

--7. Write a function to print sum of even numbers between 1 to 20.

create function fn_printsum(@num1 int,@num2 int)
returns int
as
begin
 declare @i as int
 declare @ans as int
 set @i = @num1
 set @ans = 0
 while @i<@num2
	begin
		if(@i%2=0)
			set @ans = @ans + @i
		set @i = @i + 1
	end
return @ans
end

select dbo.fn_printsum(1,7)

--8. Write a function to check weather given number is prime or not.

create function fn_isprime(@num int)
returns varchar(20)
as
begin
 declare @i as int
 set @num = @num/2+1
 set @i = 2
 while @i<@num
	begin
		if(@num%@i=0)
			return 'number is not prime'
		set @i = @i + 1
	end
return 'number is prime'
end

select dbo.fn_isprime(13)

--9. Write a function which accepts two parameters start date & end date, and returns a difference in days.

create function fn_datediff(@date1 date,@date2 date)
returns int
as
begin
	return datediff(day,@date1,@date2)
end

select dbo.fn_datediff('1-1-1','1-15-1')

--10. Write a function which accepts year & month in integer and returns total days in given month & year.

alter function fn_totalday (@year int ,@month int)
returns int
as
begin
	declare @date as date
	set @date = DATEFROMPARTS(@year,@month,1)
	return datediff(day,@date,DATEFROMPARTS(@year,@month+1,1))
end

select dbo.fn_totalday(2005,2)










