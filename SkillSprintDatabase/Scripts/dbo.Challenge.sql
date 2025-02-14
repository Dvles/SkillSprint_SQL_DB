CREATE TABLE [dbo].[Challenge] (
    [Challenge_Id] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Title]        NVARCHAR (64)    NOT NULL,
    [Description]  NVARCHAR (1000)    NOT NULL,
    [StartDate]    DATETIME         NOT NULL,
    [EndDate]      DATETIME         NOT NULL,
    [CATEGORY]     NVARCHAR (50)    NOT NULL,
	CONSTRAINT CK_Category CHECK (Category IN ('Design', 'Music', 'Poetry')),
    PRIMARY KEY CLUSTERED ([Challenge_Id] ASC)
);

