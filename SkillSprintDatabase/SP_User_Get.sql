CREATE PROCEDURE [dbo].[SP_User_Get]

AS
BEGIN
	SELECT 	[User_Id],
			[First_Name], 
			[Last_Name], 
			[Email]
	FROM [User]
END