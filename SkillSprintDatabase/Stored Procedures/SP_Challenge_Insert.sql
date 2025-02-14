CREATE PROCEDURE [dbo].[SP_Challenge_Insert]
    @Title NVARCHAR(255),
    @Description NVARCHAR(1000),
    @StartDate DATETIME,
    @EndDate DATETIME,
    @Category NVARCHAR(50)  -- New parameter for the challenge category
AS
BEGIN

    INSERT INTO [Challenge] ([Title], [Description], [StartDate], [EndDate], [Category])
    VALUES (@Title, @Description, @StartDate, @EndDate, @Category);
END;
