﻿CREATE TABLE [dbo].[Comment](


	[Comment_Id] UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
	[Title] NVARCHAR (64) NOT NULL,
	[Content] NVARCHAR (320) NOT NULL,
	[Created_At] DATETIME2 (7) DEFAULT GETDATE() NOT NULL,
	[User_Id] UNIQUEIDENTIFIER NOT NULL,  -- !!! column to reference User
    [Submission_Id] UNIQUEIDENTIFIER NOT NULL, 
	FOREIGN KEY ([User_Id]) REFERENCES [dbo].[User]([User_Id]) ON DELETE CASCADE,
	FOREIGN KEY ([Submission_Id]) REFERENCES [dbo].[Submission]([Submission_Id]) ON DELETE CASCADE 


)
