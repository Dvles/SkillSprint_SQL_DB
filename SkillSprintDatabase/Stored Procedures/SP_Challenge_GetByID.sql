CREATE PROCEDURE [dbo].[SP_Challenge_GetByID]
    @Challenge_Id UNIQUEIDENTIFIER
AS
BEGIN
    SELECT 
        [Challenge_Id],
        [Title], 
        [Description], 
        [StartDate],
        [EndDate],
        [Category]
    FROM [Challenge]
    WHERE [Challenge_Id] = @Challenge_Id;
END
