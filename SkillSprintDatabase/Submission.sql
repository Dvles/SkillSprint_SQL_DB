CREATE TABLE [dbo].[Submission]
(
    [Submission_Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
    [Url] VARCHAR(320) NOT NULL,
    [Description] VARCHAR(320) NOT NULL,
    [User_Id] UNIQUEIDENTIFIER NOT NULL,  
    [Challenge_Id] UNIQUEIDENTIFIER NOT NULL,  
    FOREIGN KEY ([User_Id]) REFERENCES [dbo].[User]([User_Id]) ON DELETE CASCADE,
    FOREIGN KEY ([Challenge_Id]) REFERENCES [dbo].[Challenge]([Challenge_Id]) ON DELETE CASCADE 

)