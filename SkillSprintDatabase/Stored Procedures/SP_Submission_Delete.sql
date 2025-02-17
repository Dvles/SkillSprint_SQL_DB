CREATE PROCEDURE [dbo].[SP_Submission_Delete]
    @Submission_Id UNIQUEIDENTIFIER
AS
BEGIN
	DELETE FROM [Submission]
    WHERE [Submission_Id] = @Submission_Id
END;
