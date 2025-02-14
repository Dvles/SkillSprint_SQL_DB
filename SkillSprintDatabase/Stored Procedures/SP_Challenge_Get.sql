CREATE PROCEDURE [dbo].[SP_Challenge_Get]
AS
BEGIN
	SELECT 	[Challenge_Id],
			[Title], 
			[Description], 
			[StartDate],
			[EndDate],
			[Category]
	FROM [Challenge]
END