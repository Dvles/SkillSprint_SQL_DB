CREATE PROCEDURE [dbo].[SP_Challenge_Insert]
    @Title NVARCHAR(255),
    @Description NVARCHAR(1000),
    @StartDate DATETIME,
    @EndDate DATETIME
AS
BEGIN
    INSERT INTO [Challenge] ([Title], [Description], [StartDate], [EndDate])
    VALUES (@Title, @Description, @StartDate, @EndDate);
END
