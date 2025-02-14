CREATE PROCEDURE [dbo].[SP_User_Insert]
	@First_Name NVARCHAR(64),
	@Last_Name NVARCHAR(64),
	@Email NVARCHAR(320),
	@Password NVARCHAR(64)
AS
BEGIN
	DECLARE @salt UNIQUEIDENTIFIER
	SET @salt = NEWID()
	INSERT INTO [User] ([First_Name],[Last_Name],[Email],[Password],[Salt])
	OUTPUT [inserted].[User_Id]
	VALUES (@first_name, @last_name, @email, [dbo].[SF_SaltAndHash](@password, @salt), @salt)
END