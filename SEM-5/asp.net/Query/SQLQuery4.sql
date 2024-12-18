----------------------------------------------------------------
------------------------- Desgination --------------------------
----------------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Desgination_SelectAll]

AS

BEGIN

	SELECT
		[dbo].[EMP_Desgination].[DesginationID],
		[dbo].[EMP_Desgination].[DesginationName],
		[dbo].[EMP_Desgination].[DesginationCode],
		[dbo].[EMP_Desgination].[Created],
		[dbo].[EMP_Desgination].[Modified]
	
	FROM
		[dbo].[EMP_Desgination]

END

-------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Desgination_SelectByID]

@DesginationID int

AS

BEGIN

	SELECT
		[dbo].[EMP_Desgination].[DesginationID],
		[dbo].[EMP_Desgination].[DesginationName],
		[dbo].[EMP_Desgination].[DesginationCode],
		[dbo].[EMP_Desgination].[Created],
		[dbo].[EMP_Desgination].[Modified]
	
	FROM
		[dbo].[EMP_Desgination]

	WHERE
		[dbo].[EMP_Desgination].[DesginationID] = @DesginationID

END

-------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Desgination_SelectByName]

@DesginationName nchar(50)

AS

BEGIN

	SELECT
		[dbo].[EMP_Desgination].[DesginationID],
		[dbo].[EMP_Desgination].[DesginationName],
		[dbo].[EMP_Desgination].[DesginationCode],
		[dbo].[EMP_Desgination].[Created],
		[dbo].[EMP_Desgination].[Modified]
	
	FROM
		[dbo].[EMP_Desgination]

	WHERE
		[dbo].[EMP_Desgination].[DesginationName] = @DesginationName

END

-------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Desgination_Insert]

@DesginationName NCHAR(50),
@DesginationCode NCHAR(10)

AS

BEGIN

	INSERT INTO [dbo].[EMP_Desgination]
	(
		[dbo].[EMP_Desgination].[DesginationName],
		[dbo].[EMP_Desgination].[DesginationCode],
		[dbo].[EMP_Desgination].[Created],
		[dbo].[EMP_Desgination].[Modified]
	)
	VALUES
	(
		@DesginationName,
		@DesginationCode,
		GETDATE(),
		GETDATE()
	)

END

-------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Desgination_Update]

@DesginationID int,
@DesginationName NCHAR(50),
@DesginationCode NCHAR(10)

AS

BEGIN

	UPDATE [dbo].[EMP_Desgination]

	SET

		[dbo].[EMP_Desgination].[DesginationName] = @DesginationName,
		[dbo].[EMP_Desgination].[DesginationCode] = @DesginationCode,
		[dbo].[EMP_Desgination].[Modified] = GETDATE()

	WHERE
		[dbo].[EMP_Desgination].[DesginationID] = @DesginationID

END

-------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Desgination_Delete]

@DesginationID int

AS

BEGIN

	DELETE FROM [dbo].[EMP_Desgination]

	WHERE
		[dbo].[EMP_Desgination].[DesginationID] = @DesginationID

END

----------------------------------------------------------------
------------------------- Department ---------------------------
----------------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Department_SelectAll]

AS

BEGIN

	SELECT
		[dbo].[EMP_Department].[DepartmentID],
		[dbo].[EMP_Department].[DepartmentName],
		[dbo].[EMP_Department].[DepartmentCode],
		[dbo].[EMP_Department].[Created],
		[dbo].[EMP_Department].[Modified]
	
	FROM
		[dbo].[EMP_Department]

END

-------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Department_SelectByID]

@DepartmentID int

AS

BEGIN

	SELECT
		[dbo].[EMP_Department].[DepartmentID],
		[dbo].[EMP_Department].[DepartmentName],
		[dbo].[EMP_Department].[DepartmentCode],
		[dbo].[EMP_Department].[Created],
		[dbo].[EMP_Department].[Modified]
	
	FROM
		[dbo].[EMP_Department]

	WHERE
		[dbo].[EMP_Department].[DepartmentID] = @DepartmentID

END

-------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Department_SelectByName]

@DepartmentName nchar(50)

AS

BEGIN

	SELECT
		[dbo].[EMP_Department].[DepartmentID],
		[dbo].[EMP_Department].[DepartmentName],
		[dbo].[EMP_Department].[DepartmentCode],
		[dbo].[EMP_Department].[Created],
		[dbo].[EMP_Department].[Modified]
	
	FROM
		[dbo].[EMP_Department]

	WHERE
		[dbo].[EMP_Department].[DepartmentName] = @DepartmentName

END

-------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Department_Insert]

@DepartmentName NCHAR(50),
@DepartmentCode NCHAR(10)

AS

BEGIN

	INSERT INTO [dbo].[EMP_Department]
	(
		[dbo].[EMP_Department].[DepartmentName],
		[dbo].[EMP_Department].[DepartmentCode],
		[dbo].[EMP_Department].[Created],
		[dbo].[EMP_Department].[Modified]
	)
	VALUES
	(
		@DepartmentName,
		@DepartmentCode,
		GETDATE(),
		GETDATE()
	)

END

-------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Department_Update]

@DepartmentID int,
@DepartmentName NCHAR(50),
@DepartmentCode NCHAR(10)

AS

BEGIN

	UPDATE [dbo].[EMP_Department]

	SET

		[dbo].[EMP_Department].[DepartmentName] = @DepartmentName,
		[dbo].[EMP_Department].[DepartmentCode] = @DepartmentCode,
		[dbo].[EMP_Department].[Modified] = GETDATE()

	WHERE
		[dbo].[EMP_Department].[DepartmentID] = @DepartmentID

END

-------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Department_Delete]

@DepartmentID int

AS

BEGIN

	DELETE FROM [dbo].[EMP_Department]

	WHERE
		[dbo].[EMP_Department].[DepartmentID] = @DepartmentID

END

----------------------------------------------------------------
-------------------------- Employee ----------------------------
----------------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Employee_SelectAll]

AS

BEGIN

	SELECT
		[dbo].[EMP_Employee].[EmployeeID],
		[dbo].[EMP_Employee].[EmployeeName],
		[dbo].[EMP_Employee].[Created],
		[dbo].[EMP_Employee].[Modified]
	
	FROM
		[dbo].[EMP_Employee]

	INNER JOIN [dbo].[EMP_Department] ON
		[dbo].[EMP_Department].[DepartmentID] = [dbo].[EMP_Employee].[DepartmentID]

	INNER JOIN [dbo].[EMP_Desgination] ON
		[dbo].[EMP_Desgination].[DesginationID] = [dbo].[EMP_Employee].[DesginationID]

END

-------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Employee_SelectByID]

@EmployeeID int

AS

BEGIN

	SELECT
		[dbo].[EMP_Employee].[DepartmentID],
		[dbo].[EMP_Employee].[EmployeeName],
		[dbo].[EMP_Employee].[Created],
		[dbo].[EMP_Employee].[Modified]
	
	FROM
		[dbo].[EMP_Employee]

	WHERE
		[dbo].[EMP_Employee].[DepartmentID] = @EmployeeID

END

-------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Employee_SelectByName]

@EmployeeName nchar(50)

AS

BEGIN

	SELECT
		[dbo].[EMP_Employee].[DepartmentID],
		[dbo].[EMP_Employee].[EmployeeName],
		[dbo].[EMP_Employee].[Created],
		[dbo].[EMP_Employee].[Modified]
	
	FROM
		[dbo].[EMP_Employee]

	WHERE
		[dbo].[EMP_Employee].[EmployeeName] = @EmployeeName

END

-------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Employee_Insert]

@EmployeeName NCHAR(50),
@Salary DECIMAL(10,2),
@Desgination NCHAR(50),
@Department NCHAR(50)

AS

BEGIN

	INSERT INTO [dbo].[EMP_Employee]
	(
		[dbo].[EMP_Employee].[EmployeeName],
		[dbo].[EMP_Employee].[Salary],
		[dbo].[EMP_Employee].[Created],
		[dbo].[EMP_Employee].[Modified]
	)
	VALUES
	(
		@EmployeeName,
		@Salary,
		GETDATE(),
		GETDATE()
	)

END

-------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Employee_Update]

@EmployeeID int,
@EmployeeName NCHAR(50),
@Salary DECIMAL(10,2)

AS

BEGIN

	UPDATE [dbo].[EMP_Employee]

	SET

		[dbo].[EMP_Employee].[EmployeeName] = @EmployeeName,
		[dbo].[EMP_Employee].[Salary] = @Salary,
		[dbo].[EMP_Employee].[Modified] = GETDATE()

	WHERE
		[dbo].[EMP_Employee].[DepartmentID] = @EmployeeID

END

-------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[PR_EMP_Employee_Delete]

@EmployeeID int

AS

BEGIN

	DELETE FROM [dbo].[EMP_Employee]

	WHERE
		[dbo].[EMP_Employee].[DepartmentID] = @EmployeeID

END

--------------------------------------------------------------

exec PR_EMP_Employee_Insert 'Mihir' , 111.11 , 0 , 0