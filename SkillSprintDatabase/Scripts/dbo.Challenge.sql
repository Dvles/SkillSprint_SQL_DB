CREATE TABLE [dbo].[Challenge] (
    [Challenge_Id] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Title]        NVARCHAR (64)    NOT NULL,
    [Description]  NVARCHAR (2000)    NOT NULL,
    [StartDate]    DATETIME         NOT NULL,
    [EndDate]      DATETIME         NOT NULL,
    [CATEGORY]     NVARCHAR (50)    NOT NULL,
    PRIMARY KEY CLUSTERED ([Challenge_Id] ASC),
    CHECK ([Category]='poetry' OR [Category]='music' OR [Category]='Design')
);

