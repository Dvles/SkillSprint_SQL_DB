CREATE PROCEDURE [dbo].[SP_Submission_Insert]
    @Url VARCHAR(320),
    @Description VARCHAR(1000),
    @User_Id UNIQUEIDENTIFIER ,  
    @Challenge_Id UNIQUEIDENTIFIER  
AS
BEGIN
    INSERT INTO [Submission] 
        ([Submission_Id], [Url], [Description], [User_Id], [Challenge_Id])
    OUTPUT inserted.[Submission_Id]
    VALUES
        (NEWID(), @Url, @Description, @User_Id, @Challenge_Id);

END;