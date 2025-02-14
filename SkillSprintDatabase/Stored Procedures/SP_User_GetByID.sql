CREATE PROCEDURE [dbo].[SP_User_GetByID]
	@User_Id UNIQUEIDENTIFIER
AS
BEGIN
	SELECT  [First_Name], 
			[Last_Name], 
			[Email]
	FROM [User]
END
