--1. Create a trigger that fires on INSERT, UPDATE and DELETE operation on the Person table to display a message “Record is Affected.”

alter trigger tr_person
on Person
after insert,update,delete
as
begin

	print 'Record is Affected'

end

insert into person values (1,'smit',1000,'1-1-2000','rajkot',18,'2-8-2000')

drop trigger tr_person

--Create a trigger that fires on INSERT, UPDATE and DELETE operation on the Person table. For that, log all operations performed on the person table into PersonLog

--Insert
create trigger tr_person_insert
on Person
after insert
as
begin
	declare @Personid as int
	declare @Personname as varchar(50)
	select @Personid = PersonID from inserted
	select @Personname = PersonName from inserted

	insert into Personlog
	values(@Personid,@Personname,'Insert',getdate())
end

insert into person values (2,'smita',100,'5-1-2000','rajkot',18,'12-8-2000')

select * from personlog


drop trigger tr_person_insert
--Update
create trigger tr_person_update
on Person
after update
as
begin
	declare @Personid as int
	declare @Personname as varchar(50)
	select @Personid = PersonID from inserted
	select @Personname = PersonName from inserted

	insert into Personlog
	values(@Personid,@Personname,'update',getdate())
end

update person set age = 2 where personid = 1

select * from personlog

drop trigger tr_person_update

--Delete
alter trigger tr_person_delete
on Person
after delete
as
begin
	declare @Personid as int
	declare @Personname as varchar(50)
	select @Personid = PersonID from deleted
	select @Personname = PersonName from deleted

	insert into Personlog
	values(@Personid,@Personname,'delete',getdate())
end

delete from person where personid = 1

select * from personlog

drop trigger tr_person_delete

--3. Create an INSTEAD OF trigger that fires on INSERT, UPDATE and DELETE operation on the Person table. For that, log all operations performed on the person table into PersonLog


--Insert
create trigger tr_person_insert_INSTEAD_OF
on Person
INSTEAD OF insert
as
begin
	declare @Personid as int
	declare @Personname as varchar(50)
	select @Personid = PersonID from inserted
	select @Personname = PersonName from inserted

	insert into Personlog
	values(@Personid,@Personname,'Insert',getdate())
end

insert into person values (2,'smitu',10,'10-1-2000','rajkot',18,'2-8-2000')

select * from personlog

drop trigger tr_person_insert_INSTEAD_OF

--Update
create trigger tr_person_update_INSTEAD_OF
on Person
INSTEAD OF update
as
begin
	declare @Personid as int
	declare @Personname as varchar(50)
	select @Personid = PersonID from inserted
	select @Personname = PersonName from inserted

	insert into Personlog
	values(@Personid,@Personname,'update',getdate())
end

update person set age = 20 where personid = 2

select * from personlog

drop trigger tr_person_update_INSTEAD_OF

--Delete
create trigger tr_person_delete_INSTEAD_OF
on Person
INSTEAD OF delete
as
begin
	declare @Personid as int
	declare @Personname as varchar(50)
	select @Personid = PersonID from deleted
	select @Personname = PersonName from deleted

	insert into Personlog
	values(@Personid,@Personname,'delete',getdate())
end

delete from person where personid = 2

select * from personlog

drop trigger tr_person_delete_INSTEAD_OF

--4. Create a trigger that fires on INSERT operation on the Person table to convert person name into uppercase whenever the record is inserted


--Insert
alter trigger tr_person_insert_toupper
on Person
after insert
as
begin
	declare @Personid as int
	select @Personid = PersonID from inserted
	update person set PersonName = UPPER(PersonName) where personid = @Personid
end

insert into person values (2,'mann',10,'10-1-2000','rajkot',18,'2-8-2000')

select * from personlog

select * from person



--5. Create a trigger that fires on INSERT operation on person table, which calculates the age and update that age in Person table.
alter trigger tr_person_update_age
on Person
after insert
as
begin
	declare @Personid as int
	declare @birthdate as datetime
	select @Personid = PersonID from inserted
	select @birthdate = BirthDate from inserted
	update person set Age = CONVERT(int,datediff(YEAR,@birthdate,getdate())) where personid = @Personid
end

insert into person values (5,'mann',10,'10-1-2000','rajkot',1,'1-1-2000')

select * from personlog

select * from person


--6. Create DELETE trigger on PersonLog table, when we delete any record of PersonLog table it prints ‘Record deleted successfully from PersonLog’

create trigger tr_personlog
on Personlog
after delete
as
begin
	print 'Record is deleted'
end

delete from personlog





