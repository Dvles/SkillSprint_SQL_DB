CREATE PROCEDURE [dbo].[SP_Challenge_Delete]
    @Challenge_Id UNIQUEIDENTIFIER
AS
BEGIN
    DELETE FROM [Challenge]
    WHERE [Challenge_Id] = @Challenge_Id;
END
