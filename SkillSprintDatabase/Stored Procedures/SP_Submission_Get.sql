CREATE PROCEDURE [dbo].[SP_Submission_Get]
AS
BEGIN
	SELECT [Url],
    [Description],
    [User_Id], 
    [Challenge_Id]
    FROM
    [Submission]
END;
