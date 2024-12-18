INSERT INTO Product_Info VALUES(1,'Smatphone',35000);
INSERT INTO Product_Info VALUES(2,'Laptop',65000);
INSERT INTO Product_Info VALUES(3,'Headphones',5500);
INSERT INTO Product_Info VALUES(4,'Television',85000);
INSERT INTO Product_Info VALUES(5,'Gaming Console',32000);

--1. Create a cursor Product_Cursor to fetch all the rows from a products table

Declare @Product_id int,
		@Product_Name varchar(250),
		@Price Decimal(10,2);

Declare Product_Cursor Cursor for
select
	Product_id,
	Product_Name,
	Price
from Product_Info;

open Product_Cursor;
Fetch Next From Product_Cursor into
	@Product_id,
	@Product_Name,
	@Price
While @@FETCH_STATUS = 0
Begin
	Print Concat(@Product_id,'-',@Product_Name,'-',@Price);
	Fetch Next From Product_Cursor into
	@Product_id,
	@Product_Name,
	@Price
End

Close Product_Cursor;
Deallocate Product_Cursor;




--2. Create a cursor Product_Cursor_Fetch to fetch the records in form of ProductID_ProductName. (Example: 1_Smartphone)
Declare @Product_id int,
		@Product_Name varchar(250),
		@Price Decimal(10,2);

Declare Product_Cursor Cursor for
select
	Product_id,
	Product_Name,
	Price
from Product_Info;

open Product_Cursor;
Fetch Next From Product_Cursor into
	@Product_id,
	@Product_Name,
	@Price
While @@FETCH_STATUS = 0
Begin
	Print Concat(@Product_id,'_',@Product_Name);
	Fetch Next From Product_Cursor into
	@Product_id,
	@Product_Name,
	@Price
End

Close Product_Cursor;
Deallocate Product_Cursor;


--3. Create a cursor Product_CursorDelete that deletes all the data from the Products table

Declare @Product_id int,
		@Product_Name varchar(250),
		@Price Decimal(10,2);

Declare Product_Cursor Cursor for
select
	Product_id,
	Product_Name,
	Price
from Product_Info;

open Product_Cursor;
Fetch Next From Product_Cursor into
	@Product_id,
	@Product_Name,
	@Price
While @@FETCH_STATUS = 0
Begin
	Delete from Product_Info where Product_id = @Product_id;
	Fetch Next From Product_Cursor into
	@Product_id,
	@Product_Name,
	@Price
End

Close Product_Cursor;
Deallocate Product_Cursor;

--4. Create a cursor Product_CursorUpdate that retrieves all the data from the products table and increases the price by 10%

Declare @Product_id int,
		@Product_Name varchar(250),
		@Price Decimal(10,2);

Declare Product_Cursor Cursor for
select
	Product_id,
	Product_Name,
	Price
from Product_Info;

open Product_Cursor;
Fetch Next From Product_Cursor into
	@Product_id,
	@Product_Name,
	@Price
While @@FETCH_STATUS = 0
Begin
	Update Product_Info Set Price += @Price*0.1
	where Product_id = @Product_id;
	Fetch Next From Product_Cursor into
	@Product_id,
	@Product_Name,
	@Price
End

Close Product_Cursor;
Deallocate Product_Cursor;

--5. Create a cursor to insert details of Products into the NewProducts table if the product is “Laptop” (Note: Create NewProducts table first with same fields as Products table)

Declare @Product_id int,
		@Product_Name varchar(250),
		@Price Decimal(10,2);

Declare Product_Cursor Cursor for
select
	Product_id,
	Product_Name,
	Price
from Product_Info;

open Product_Cursor;
Fetch Next From Product_Cursor into
	@Product_id,
	@Product_Name,
	@Price
While @@FETCH_STATUS = 0
Begin
	If(@Product_Name = 'Laptop')
		Begin
			Insert into NewProducts Values(@Product_id,@Product_Name,@Price);
		End
	Fetch Next From Product_Cursor into
	@Product_id,
	@Product_Name,
	@Price
End

Close Product_Cursor;
Deallocate Product_Cursor;
