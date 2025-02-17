CREATE PROCEDURE [dbo].[SP_Submission_Update]
    @Submission_Id UNIQUEIDENTIFIER,  
    @Url VARCHAR(320),
    @Description VARCHAR(1000),
    @User_Id UNIQUEIDENTIFIER ,  
    @Challenge_Id UNIQUEIDENTIFIER  
AS
BEGIN
	UPDATE [Submission]
    SET  
    @Url = [Url],
    @Description = [Description],
    @User_Id = [User_Id], 
    @Challenge_Id = [Challenge_Id]
    WHERE [Submission_Id] = @Submission_Id;

END;