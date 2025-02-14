CREATE TABLE [dbo].[Challenge](


	[Challenge_Id] UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
	[Title] NVARCHAR (64) NOT NULL,
	[Description] NVARCHAR (64) NOT NULL,
	[StartDate] DATETIME NOT NULL, 
	[EndDate] DATETIME  NOT NULL,
	[CATEGORY] NVARCHAR(50) NOT NULL CHECK (Category IN('Design', 'music', 'poetry')) 


)
