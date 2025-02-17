CREATE PROCEDURE [dbo].[SP_Submission_GetByID] 
    @Challenge_Id UNIQUEIDENTIFIER  
AS
BEGIN
	SELECT [Url],
    [Description],
    [User_Id], 
    [Challenge_Id]
    FROM
    [Submission]
END;
