--!============ Product Table Procedures =========!--

------------------ Insert

CREATE OR ALTER PROCEDURE [dbo].[PR_Product_Insert]
@ProductName Varchar(100),
@ProductPrice Decimal(10,2),
@ProductCode Varchar(100),
@Description Varchar(100),
@UserID int

AS
BEGIN
	INSERT INTO [dbo].[Product]
	(
		[dbo].[Product].[ProductName],
		[dbo].[Product].[ProductPrice],
		[dbo].[Product].[ProductCode],
		[dbo].[Product].[Description],
		[dbo].[Product].[UserID]
	)
	values
	(
		@ProductName,
		@ProductPrice,
		@ProductCode,
		@Description,
		@UserID
	)
END

EXEC [dbo].[PR_Product_Insert] 'Table',5000.00,'TBL65','Furniture item',1


-------------------------- Update

CREATE OR ALTER PROCEDURE [dbo].[PR_Product_Update_ByID]
@ProductID int,
@ProductName Varchar(100),
@ProductPrice Decimal(10,2),
@ProductCode Varchar(100),
@Description Varchar(100),
@UserID int

AS
BEGIN
	UPDATE [dbo].[Product]
	SET 
		[dbo].[Product].[ProductName] = @ProductName,
		[dbo].[Product].[ProductPrice] = @ProductPrice,
		[dbo].[Product].[ProductCode] = @ProductCode,
		[dbo].[Product].[Description] = @Description,
		[dbo].[Product].[UserID] = @UserID
	where 
		[dbo].[Product].[ProductID] = @ProductID
END

EXEC [dbo].[PR_Product_Update_ByID] 2,'Table',5500.00,'TBL65','Furniture item',1

--------------- Delete

CREATE OR ALTER PROCEDURE [dbo].[PR_Product_Delete_ByID]
@ProductID int

AS
BEGIN
	DELETE FROM [dbo].[Product]
	where 
		[dbo].[Product].[ProductID] = @ProductID
END

exec PR_Product_Delete_ByID 1

---------------- Select by ID

CREATE OR ALTER PROCEDURE [dbo].[PR_Product_Select_ByID]
@ProductID int

AS
BEGIN
	SELECT  
		[dbo].[Product].[ProductID],
		[dbo].[Product].[ProductName],
		[dbo].[Product].[ProductPrice],
		[dbo].[Product].[ProductCode],
		[dbo].[Product].[Description],
		[dbo].[Product].[UserID]
	FROM	
		[dbo].[Product]
	
	WHERE [dbo].[Product].[ProductID] = @ProductID
END

exec PR_Product_Select_ByID 2

------------------- Select all

CREATE OR ALTER PROCEDURE [dbo].[PR_Product_Select_All]

AS
BEGIN
	SELECT  
		[dbo].[Product].[ProductID],
		[dbo].[Product].[ProductName],
		[dbo].[Product].[ProductPrice],
		[dbo].[Product].[ProductCode],
		[dbo].[Product].[Description],
		[dbo].[User].[UserName]
	FROM	
		[dbo].[Product]
	INNER JOIN [dbo].[User] ON [dbo].[User].[UserID] = [dbo].[Product].[UserID]
END

exec PR_Product_Select_All

--!============ User Table Procedures =========!--

----------- Insert

CREATE OR ALTER PROCEDURE [dbo].[PR_User_Insert]
@UserName Varchar(100),
@Email Varchar(100),
@Password Varchar(100),
@MobileNo Varchar(15),
@Address Varchar(100),
@IsActive Bit

AS
BEGIN
	INSERT INTO [dbo].[User]
	(
		[dbo].[User].[UserName],
		[dbo].[User].[Email],
		[dbo].[User].[Password],
		[dbo].[User].[MobileNo],
		[dbo].[User].[Address],
		[dbo].[User].[IsActive]
	)
	values
	(
		@UserName,
		@Email,
		@Password,
		@MobileNo,
		@Address,
		@IsActive 
	)
END

EXEC [dbo].[PR_User_Insert] 'Mihir','mihir@gmail.com','mihir111','1234567890','Rajokt-Mavdi',true

------------------ Update

CREATE OR ALTER PROCEDURE [dbo].[PR_User_Update_ByID]
@UserID int,
@UserName Varchar(100),
@Email Varchar(100),
@Password Varchar(100),
@MobileNo Varchar(15),
@Address Varchar(100),
@IsActive Bit

AS
BEGIN
	UPDATE [dbo].[User]
	SET
		[dbo].[User].[UserName] = @UserName,
		[dbo].[User].[Email] = @Email,
		[dbo].[User].[Password] = @Password,
		[dbo].[User].[MobileNo] = @MobileNo,
		[dbo].[User].[Address] = @Address,
		[dbo].[User].[IsActive] = @IsActive
	WHERE
		[dbo].[User].[UserID] = @UserID
END

EXEC [dbo].[PR_User_Update_ByID] 1,'Mihir','mihir123@gmail.com','mihir111','1234567890','Rajokt-Mavdi',true

------------------ Delete by id

CREATE OR ALTER PROCEDURE [dbo].[PR_User_Delete_ByID]
@UserID int

AS
BEGIN
    DELETE FROM [dbo].[User]
    WHERE 
        [dbo].[User].[UserID] = @UserID
END

EXEC [dbo].[PR_User_Delete_ByID] 0

---------------------- Select by id

CREATE OR ALTER PROCEDURE [dbo].[PR_User_Select_ByID]
@UserID int

AS
BEGIN
    SELECT  
        [dbo].[User].[UserID],
        [dbo].[User].[UserName],
        [dbo].[User].[Email],
        [dbo].[User].[Password],
        [dbo].[User].[MobileNo],
        [dbo].[User].[Address],
        [dbo].[User].[IsActive]
    FROM    
        [dbo].[User]
    WHERE 
        [dbo].[User].[UserID] = @UserID
END

EXEC [dbo].[PR_User_Select_ByID] 1

---------------- Select All

CREATE OR ALTER PROCEDURE [dbo].[PR_User_Select_All]

AS
BEGIN
    SELECT  
        [dbo].[User].[UserID],
        [dbo].[User].[UserName],
        [dbo].[User].[Email],
        [dbo].[User].[Password],
        [dbo].[User].[MobileNo],
        [dbo].[User].[Address],
        [dbo].[User].[IsActive]
    FROM    
        [dbo].[User]
END

EXEC [dbo].[PR_User_Select_All]


--!============ Order Table Procedures =========!--

------------------------- Insert

CREATE OR ALTER PROCEDURE [dbo].[PR_Order_Insert]
@OrderDate DateTime,
@CustomerID Int,
@PaymentMode Varchar(100) = NULL,
@TotalAmount Decimal(10,2) = NULL,
@ShippingAddress Varchar(100),
@UserID Int

AS
BEGIN
    INSERT INTO [dbo].[Order]
    (
        [dbo].[Order].[OrderDate],
        [dbo].[Order].[CustomerID],
        [dbo].[Order].[PaymentMode],
        [dbo].[Order].[TotalAmount],
        [dbo].[Order].[ShippingAddress],
        [dbo].[Order].[UserID]
    )
    VALUES
    (
        @OrderDate,
        @CustomerID,
        @PaymentMode,
        @TotalAmount,
        @ShippingAddress,
        @UserID
    )
END

EXEC [dbo].[PR_Order_Insert] '2023-08-07', 1, 'Credit Card', 250.75, '123 Main St', 1

---------------------- Update

CREATE OR ALTER PROCEDURE [dbo].[PR_Order_Update_ByID]
@OrderID Int,
@OrderDate DateTime,
@CustomerID Int,
@PaymentMode Varchar(100) = NULL,
@TotalAmount Decimal(10,2) = NULL,
@ShippingAddress Varchar(100),
@UserID Int

AS
BEGIN
    UPDATE [dbo].[Order]
    SET
        [dbo].[Order].[OrderDate] = @OrderDate,
        [dbo].[Order].[CustomerID] = @CustomerID,
        [dbo].[Order].[PaymentMode] = @PaymentMode,
        [dbo].[Order].[TotalAmount] = @TotalAmount,
        [dbo].[Order].[ShippingAddress] = @ShippingAddress,
        [dbo].[Order].[UserID] = @UserID
    WHERE
        [dbo].[Order].[OrderID] = @OrderID
END

EXEC [dbo].[PR_Order_Update_ByID] 1, '2023-08-08', 1, 'Debit Card', 300.50, '456 Elm St', 1

------------------------- Delete

CREATE OR ALTER PROCEDURE [dbo].[PR_Order_Delete_ByID]
@OrderID Int

AS
BEGIN
    DELETE FROM [dbo].[Order]
    WHERE 
        [dbo].[Order].[OrderID] = @OrderID
END

EXEC [dbo].[PR_Order_Delete_ByID] 0

---------------------- Select by id

CREATE OR ALTER PROCEDURE [dbo].[PR_Order_Select_ByID]
@OrderID Int

AS
BEGIN
    SELECT  
        [dbo].[Order].[OrderID],
        [dbo].[Order].[OrderDate],
        [dbo].[Order].[CustomerID],
        [dbo].[Order].[PaymentMode],
        [dbo].[Order].[TotalAmount],
        [dbo].[Order].[ShippingAddress],
        [dbo].[Order].[UserID]
    FROM    
        [dbo].[Order]
    WHERE 
        [dbo].[Order].[OrderID] = @OrderID
END

EXEC [dbo].[PR_Order_Select_ByID] 1



------------------------ Select all

CREATE OR ALTER PROCEDURE [dbo].[PR_Order_Select_All]

AS
BEGIN
    SELECT  
        [dbo].[Order].[OrderID],
        [dbo].[Order].[OrderDate],
        [dbo].[Order].[CustomerID],
        [dbo].[Order].[PaymentMode],
        [dbo].[Order].[TotalAmount],
        [dbo].[Order].[ShippingAddress],
        [dbo].[User].[UserName]
    FROM    
        [dbo].[Order]
	INNER JOIN [dbo].[User] ON [dbo].[User].[UserID] = [dbo].[Order].[UserID]
END

EXEC [dbo].[PR_Order_Select_All]


--!============ Customer Table Procedures =========!--


----------- Insert

CREATE OR ALTER PROCEDURE [dbo].[PR_Customer_Insert]
@CustomerName Varchar(100),
@HomeAddress Varchar(100),
@Email Varchar(100),
@MobileNo Varchar(15),
@GSTNO Varchar(15),
@CityName Varchar(100),
@PinCode Varchar(15),
@NetAmount Decimal(10,2),
@UserID Int

AS
BEGIN
    INSERT INTO [dbo].[Customer]
    (
        [dbo].[Customer].[CustomerName],
        [dbo].[Customer].[HomeAddress],
        [dbo].[Customer].[Email],
        [dbo].[Customer].[MobileNo],
        [dbo].[Customer].[GSTNO],
        [dbo].[Customer].[CityName],
        [dbo].[Customer].[PinCode],
        [dbo].[Customer].[NetAmount],
        [dbo].[Customer].[UserID]
    )
    VALUES
    (
        @CustomerName,
        @HomeAddress,
        @Email,
        @MobileNo,
        @GSTNO,
        @CityName,
        @PinCode,
        @NetAmount,
        @UserID
    )
END

EXEC [dbo].[PR_Customer_Insert] 'John Doe', '123 Main St', 'john@example.com', '1234567890', 'GST12345', 'Metropolis', '12345', 1000.00, 1

-------------------- update

CREATE OR ALTER PROCEDURE [dbo].[PR_Customer_Update_ByID]
@CustomerID Int,
@CustomerName Varchar(100),
@HomeAddress Varchar(100),
@Email Varchar(100),
@MobileNo Varchar(15),
@GSTNO Varchar(15),
@CityName Varchar(100),
@PinCode Varchar(15),
@NetAmount Decimal(10,2),
@UserID Int

AS
BEGIN
    UPDATE [dbo].[Customer]
    SET
        [dbo].[Customer].[CustomerName] = @CustomerName,
        [dbo].[Customer].[HomeAddress] = @HomeAddress,
        [dbo].[Customer].[Email] = @Email,
        [dbo].[Customer].[MobileNo] = @MobileNo,
        [dbo].[Customer].[GSTNO] = @GSTNO,
        [dbo].[Customer].[CityName] = @CityName,
        [dbo].[Customer].[PinCode] = @PinCode,
        [dbo].[Customer].[NetAmount] = @NetAmount,
        [dbo].[Customer].[UserID] = @UserID
    WHERE
        [dbo].[Customer].[CustomerID] = @CustomerID
END

EXEC [dbo].[PR_Customer_Update_ByID] 1, 'Jane Doe Jr', '456 Elm St', 'jane@example.com', '0987654321', 'GST54321', 'Gotham', '54321', 1500.00, 1

-------------------- Delete

CREATE OR ALTER PROCEDURE [dbo].[PR_Customer_Delete_ByID]
@CustomerID Int

AS
BEGIN
    DELETE FROM [dbo].[Customer]
    WHERE 
        [dbo].[Customer].[CustomerID] = @CustomerID
END

EXEC [dbo].[PR_Customer_Delete_ByID] 0

----------------- Select by id

CREATE OR ALTER PROCEDURE [dbo].[PR_Customer_Select_ByID]
@CustomerID Int

AS
BEGIN
    SELECT  
        [dbo].[Customer].[CustomerID],
        [dbo].[Customer].[CustomerName],
        [dbo].[Customer].[HomeAddress],
        [dbo].[Customer].[Email],
        [dbo].[Customer].[MobileNo],
        [dbo].[Customer].[GSTNO],
        [dbo].[Customer].[CityName],
        [dbo].[Customer].[PinCode],
        [dbo].[Customer].[NetAmount],
        [dbo].[Customer].[UserID]
    FROM    
        [dbo].[Customer]
    WHERE 
        [dbo].[Customer].[CustomerID] = @CustomerID
END

EXEC [dbo].[PR_Customer_Select_ByID] 1


-------------- Select all

CREATE OR ALTER PROCEDURE [dbo].[PR_Customer_Select_All]

AS
BEGIN
    SELECT  
        [dbo].[Customer].[CustomerID],
        [dbo].[Customer].[CustomerName],
        [dbo].[Customer].[HomeAddress],
        [dbo].[Customer].[Email],
        [dbo].[Customer].[MobileNo],
        [dbo].[Customer].[GSTNO],
        [dbo].[Customer].[CityName],
        [dbo].[Customer].[PinCode],
        [dbo].[Customer].[NetAmount],
        [dbo].[User].[UserName]
    FROM    
        [dbo].[Customer]
	INNER JOIN [dbo].[User] ON [dbo].[User].[UserID] = [dbo].[Customer].[UserID] 
END

EXEC [dbo].[PR_Customer_Select_All]


--!============ OrderDetail Table Procedures =========!--


----------- Insert

CREATE OR ALTER PROCEDURE [dbo].[PR_OrderDetail_Insert]
@OrderID Int,
@ProductID Int,
@Quantity Int,
@Amount Decimal(10,2),
@TotalAmount Decimal(10,2),
@UserID Int

AS
BEGIN
    INSERT INTO [dbo].[OrderDetail]
    (
        [dbo].[OrderDetail].[OrderID],
        [dbo].[OrderDetail].[ProductID],
        [dbo].[OrderDetail].[Quantity],
        [dbo].[OrderDetail].[Amount],
        [dbo].[OrderDetail].[TotalAmount],
        [dbo].[OrderDetail].[UserID]
    )
    VALUES
    (
        @OrderID,
        @ProductID,
        @Quantity,
        @Amount,
        @TotalAmount,
        @UserID
    )
END

EXEC [dbo].[PR_OrderDetail_Insert] 1, 2, 2, 100.50, 201.00, 1

--------------- update

CREATE OR ALTER PROCEDURE [dbo].[PR_OrderDetail_Update_ByID]
@OrderDetailID Int,
@OrderID Int,
@ProductID Int,
@Quantity Int,
@Amount Decimal(10,2),
@TotalAmount Decimal(10,2),
@UserID Int

AS
BEGIN
    UPDATE [dbo].[OrderDetail]
    SET
        [dbo].[OrderDetail].[OrderID] = @OrderID,
        [dbo].[OrderDetail].[ProductID] = @ProductID,
        [dbo].[OrderDetail].[Quantity] = @Quantity,
        [dbo].[OrderDetail].[Amount] = @Amount,
        [dbo].[OrderDetail].[TotalAmount] = @TotalAmount,
        [dbo].[OrderDetail].[UserID] = @UserID
    WHERE
        [dbo].[OrderDetail].[OrderDetailID] = @OrderDetailID
END

EXEC [dbo].[PR_OrderDetail_Update_ByID] 2, 1, 2, 3, 150.91, 451.50, 1

------------- delete

CREATE OR ALTER PROCEDURE [dbo].[PR_OrderDetail_Delete_ByID]
@OrderDetailID Int

AS
BEGIN
    DELETE FROM [dbo].[OrderDetail]
    WHERE 
        [dbo].[OrderDetail].[OrderDetailID] = @OrderDetailID
END

EXEC [dbo].[PR_OrderDetail_Delete_ByID] 1


--------------- select by id

CREATE OR ALTER PROCEDURE [dbo].[PR_OrderDetail_Select_ByID]
@OrderDetailID Int

AS
BEGIN
    SELECT  
        [dbo].[OrderDetail].[OrderDetailID],
        [dbo].[OrderDetail].[OrderID],
        [dbo].[OrderDetail].[ProductID],
        [dbo].[OrderDetail].[Quantity],
        [dbo].[OrderDetail].[Amount],
        [dbo].[OrderDetail].[TotalAmount],
        [dbo].[OrderDetail].[UserID]
    FROM    
        [dbo].[OrderDetail]
    WHERE 
        [dbo].[OrderDetail].[OrderDetailID] = @OrderDetailID
END

EXEC [dbo].[PR_OrderDetail_Select_ByID] 2



------------------ select all

CREATE OR ALTER PROCEDURE [dbo].[PR_OrderDetail_Select_All]

AS
BEGIN
    SELECT  
        [dbo].[OrderDetail].[OrderDetailID],
        [dbo].[OrderDetail].[OrderID],
        [dbo].[OrderDetail].[ProductID],
        [dbo].[OrderDetail].[Quantity],
        [dbo].[OrderDetail].[Amount],
        [dbo].[OrderDetail].[TotalAmount],
        [dbo].[OrderDetail].[UserID]
    FROM    
        [dbo].[OrderDetail]
	INNER JOIN [dbo].[Order] ON [dbo].[Order].[OrderID] = [dbo].[OrderDetail].[OrderID]
	INNER JOIN [dbo].[Product] ON [dbo].[Product].[ProductID] = [dbo].[OrderDetail].[ProductID]
	INNER JOIN [dbo].[User] ON [dbo].[User].[UserID] = [dbo].[OrderDetail].[UserID]
END

EXEC [dbo].[PR_OrderDetail_Select_All]



--!============ Bills Table Procedures =========!--


----------- Insert

CREATE OR ALTER PROCEDURE [dbo].[PR_Bills_Insert]
@BillNumber Varchar(100),
@BillDate DateTime,
@OrderID Int,
@TotalAmount Decimal(10,2),
@Discount Decimal(10,2) = NULL,
@NetAmount Decimal(10,2),
@UserID Int

AS
BEGIN
    INSERT INTO [dbo].[Bills]
    (
        [dbo].[Bills].[BillNumber],
        [dbo].[Bills].[BillDate],
        [dbo].[Bills].[OrderID],
        [dbo].[Bills].[TotalAmount],
        [dbo].[Bills].[Discount],
        [dbo].[Bills].[NetAmount],
        [dbo].[Bills].[UserID]
    )
    VALUES
    (
        @BillNumber,
        @BillDate,
        @OrderID,
        @TotalAmount,
        @Discount,
        @NetAmount,
        @UserID
    )
END

EXEC [dbo].[PR_Bills_Insert] 'BN001', '2023-08-07', 1, 250.75, 10.00, 240.75, 1

------------------ update

CREATE OR ALTER PROCEDURE [dbo].[PR_Bills_Update_ByID]
@BillID Int,
@BillNumber Varchar(100),
@BillDate DateTime,
@OrderID Int,
@TotalAmount Decimal(10,2),
@Discount Decimal(10,2) = NULL,
@NetAmount Decimal(10,2),
@UserID Int

AS
BEGIN
    UPDATE [dbo].[Bills]
    SET
        [dbo].[Bills].[BillNumber] = @BillNumber,
        [dbo].[Bills].[BillDate] = @BillDate,
        [dbo].[Bills].[OrderID] = @OrderID,
        [dbo].[Bills].[TotalAmount] = @TotalAmount,
        [dbo].[Bills].[Discount] = @Discount,
        [dbo].[Bills].[NetAmount] = @NetAmount,
        [dbo].[Bills].[UserID] = @UserID
    WHERE
        [dbo].[Bills].[BillID] = @BillID
END

EXEC [dbo].[PR_Bills_Update_ByID] 1, 'BN002', '2023-08-08', 1, 300.50, 15.00, 285.50, 1


---------------- delete

CREATE OR ALTER PROCEDURE [dbo].[PR_Bills_Delete_ByID]
@BillID Int

AS
BEGIN
    DELETE FROM [dbo].[Bills]
    WHERE 
        [dbo].[Bills].[BillID] = @BillID
END

EXEC [dbo].[PR_Bills_Delete_ByID] 0


------------------------- select by id

CREATE OR ALTER PROCEDURE [dbo].[PR_Bills_Select_ByID]
@BillID Int

AS
BEGIN
    SELECT  
        [dbo].[Bills].[BillID],
        [dbo].[Bills].[BillNumber],
        [dbo].[Bills].[BillDate],
        [dbo].[Bills].[OrderID],
        [dbo].[Bills].[TotalAmount],
        [dbo].[Bills].[Discount],
        [dbo].[Bills].[NetAmount],
        [dbo].[Bills].[UserID]
    FROM    
        [dbo].[Bills]
    WHERE 
        [dbo].[Bills].[BillID] = @BillID
END

EXEC [dbo].[PR_Bills_Select_ByID] 1



--------------- select all

CREATE OR ALTER PROCEDURE [dbo].[PR_Bills_Select_All]

AS
BEGIN
    SELECT  
        [dbo].[Bills].[BillID],
        [dbo].[Bills].[BillNumber],
        [dbo].[Bills].[BillDate],
        [dbo].[Bills].[OrderID],
        [dbo].[Bills].[TotalAmount],
        [dbo].[Bills].[Discount],
        [dbo].[Bills].[NetAmount],
        [dbo].[Bills].[UserID]
    FROM    
        [dbo].[Bills]
	INNER JOIN [dbo].[Order] ON [dbo].[Order].[OrderID] = [dbo].[Bills].[OrderID]
	INNER JOIN [dbo].[User] ON [dbo].[User].[UserID] = [dbo].[Bills].[UserID]
END

EXEC [dbo].[PR_Bills_Select_All]














