﻿CREATE TABLE [dbo].[User]
(
	[User_Id] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
	[First_Name] NVARCHAR (64) NOT NULL,
	[Last_Name] NVARCHAR (64) NOT NULL,
	[Email] NVARCHAR (320) NOT NULL,
	[Password] VARBINARY (64) NOT NULL,
	[Salt] UNIQUEIDENTIFIER NOT NULL,
	[Created_At] DATETIME2 (7) DEFAULT GETDATE() NOT NULL,
	[IsDisabled] BIT NOT NULL DEFAULT 0,
)
