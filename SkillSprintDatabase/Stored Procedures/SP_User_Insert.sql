CREATE PROCEDURE [dbo].[SP_User_Insert]
    @First_Name NVARCHAR(64),
    @Last_Name NVARCHAR(64),
    @Email NVARCHAR(320),
    @Password NVARCHAR(64)
AS
BEGIN
    DECLARE @HashedPassword VARBINARY(64);
    DECLARE @Salt UNIQUEIDENTIFIER;

    -- Generate a salt (unique value for each user)
    SET @Salt = NEWID();

    -- Hash the password with SHA-256 and combine with the salt
    SET @HashedPassword = HASHBYTES('SHA2_256', CONCAT(CAST(@Salt AS NVARCHAR(36)), @Password));

    -- Insert the user into the table
    INSERT INTO [User] ([First_Name], [Last_Name], [Email], [Password], [Salt])
    OUTPUT [inserted].[User_Id]
    VALUES (@First_Name, @Last_Name, @Email, @HashedPassword, @Salt);
END;
GO
