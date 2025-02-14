CREATE PROCEDURE [dbo].[SP_User_Delete]
	@user_id UNIQUEIDENTIFIER
AS
BEGIN

	UPDATE [User]
		SET [IsDisabled] = 1
		WHERE [User_Id] = @user_id;
END
