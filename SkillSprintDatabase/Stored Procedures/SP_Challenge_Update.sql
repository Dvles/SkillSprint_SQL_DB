CREATE PROCEDURE [dbo].[SP_Challenge_Update]
    @Challenge_Id UNIQUEIDENTIFIER,
    @Title NVARCHAR(255),
    @Description NVARCHAR(1000),
    @StartDate DATETIME,
    @EndDate DATETIME
AS
BEGIN
    UPDATE [Challenge]
    SET 
        [Title] = @Title,
        [Description] = @Description,
        [StartDate] = @StartDate,
        [EndDate] = @EndDate
    WHERE [Challenge_Id] = @Challenge_Id;
END

