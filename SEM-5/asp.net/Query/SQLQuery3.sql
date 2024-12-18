CREATE PROCEDURE [dbo].[PR_LOC_Country_SelectAll]

AS

BEGIN

	SELECT
		[dbo].[LOC_Country].[CountryID],
		[dbo].[LOC_Country].[CountryName],
		[dbo].[LOC_Country].[CountryCode],
		[dbo].[LOC_Country].[Created],
		[dbo].[LOC_Country].[Modified]
	
	FROM
		[dbo].[LOC_Country]

END

-------------------------------------------------------

CREATE PROCEDURE [dbo].[PR_LOC_Country_SelectByID]

@CountryID int

AS

BEGIN

	SELECT
		[dbo].[LOC_Country].[CountryID],
		[dbo].[LOC_Country].[CountryName],
		[dbo].[LOC_Country].[CountryCode],
		[dbo].[LOC_Country].[Created],
		[dbo].[LOC_Country].[Modified]
	
	FROM
		[dbo].[LOC_Country]

	WHERE
		[dbo].[LOC_Country].[CountryID] = @CountryID

END

-------------------------------------------------------

CREATE PROCEDURE [dbo].[PR_LOC_Country_Insert]

@CountryName NVARCHAR(50),
@CountryCode NVARCHAR(10)

AS

BEGIN

	INSERT INTO [dbo].[LOC_Country]
	(
		[dbo].[LOC_Country].[CountryName],
		[dbo].[LOC_Country].[CountryCode],
		[dbo].[LOC_Country].[Created],
		[dbo].[LOC_Country].[Modified]
	)
	VALUES
	(
		@CountryName,
		@CountryCode,
		GETDATE(),
		GETDATE()
	)

END

-------------------------------------------------------

CREATE PROCEDURE [dbo].[PR_LOC_Country_Update]

@CountryID int,
@CountryName NVARCHAR(50),
@CountryCode NVARCHAR(10)

AS

BEGIN

	UPDATE [dbo].[LOC_Country]

	SET

		[dbo].[LOC_Country].[CountryName] = @CountryName,
		[dbo].[LOC_Country].[CountryCode] = @CountryCode,
		[dbo].[LOC_Country].[Modified] = GETDATE()

	WHERE
		[dbo].[LOC_Country].[CountryID] = @CountryID

END

-------------------------------------------------------

CREATE PROCEDURE [dbo].[PR_LOC_Country_Delete]

@CountryID int

AS

BEGIN

	DELETE FROM [dbo].[LOC_Country]

	WHERE
		[dbo].[LOC_Country].[CountryID] = @CountryID

END

-------------------------------------------------------

CREATE PROCEDURE [dbo].[PR_LOC_State_SelectAll]

AS

BEGIN

	SELECT
		[dbo].[LOC_State].[StateID],
		[dbo].[LOC_State].[StateName],
		[dbo].[LOC_State].[StateCode],
		[dbo].[LOC_State].[CountryID],
		[dbo].[LOC_State].[Created],
		[dbo].[LOC_State].[Modified]
	
	FROM
		[dbo].[LOC_State]

END

-------------------------------------------------------

CREATE PROCEDURE [dbo].[PR_LOC_State_SelectByID]

@StateID int

AS

BEGIN

	SELECT
		[dbo].[LOC_State].[StateID],
		[dbo].[LOC_State].[StateName],
		[dbo].[LOC_State].[StateCode],
		[dbo].[LOC_State].[CountryID],
		[dbo].[LOC_State].[Created],
		[dbo].[LOC_State].[Modified]
	
	FROM
		[dbo].[LOC_State]

	WHERE
		[dbo].[LOC_State].[StateID] = @StateID

END

-------------------------------------------------------

CREATE PROCEDURE [dbo].[PR_LOC_State_Insert]

@StateName NVARCHAR(50),
@StateCode NVARCHAR(10),
@CountryID int

AS

BEGIN

	INSERT INTO [dbo].[LOC_State]
	(
		[dbo].[LOC_State].[StateName],
		[dbo].[LOC_State].[StateCode],
		[dbo].[LOC_State].[CountryID],
		[dbo].[LOC_State].[Created],
		[dbo].[LOC_State].[Modified]
	)
	VALUES
	(
		@StateName,
		@StateCode,
		@CountryID,
		GETDATE(),
		GETDATE()
	)

END

-------------------------------------------------------

CREATE PROCEDURE [dbo].[PR_LOC_State_Update]

@StateID int,
@StateName NVARCHAR(50),
@StateCode NVARCHAR(10),
@CountryID int

AS

BEGIN

	UPDATE [dbo].[LOC_State]

	SET

		[dbo].[LOC_State].[StateName] = @StateName,
		[dbo].[LOC_State].[StateCode] = @StateCode,
		[dbo].[LOC_State].[CountryID] = @CountryID,
		[dbo].[LOC_State].[Modified] = GETDATE()

	WHERE
		[dbo].[LOC_State].[StateID] = @StateID

END

-------------------------------------------------------

CREATE PROCEDURE [dbo].[PR_LOC_State_Delete]

@StateID int

AS

BEGIN

	DELETE FROM [dbo].[LOC_State]

	WHERE
		[dbo].[LOC_State].[StateID] = @StateID

END
