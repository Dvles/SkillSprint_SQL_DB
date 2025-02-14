ALTER TABLE [dbo].[Submission]
ADD CONSTRAINT FK_Submission_User
FOREIGN KEY ([User_Id]) REFERENCES [dbo].[User] ([User_Id])
ON DELETE NO ACTION; 