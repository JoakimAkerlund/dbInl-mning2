CREATE TABLE [dbo].[CategoryChanges] (
    [CategoryChangedID]   INT           IDENTITY (1, 1) NOT NULL,
    [CategoryID]          INT           NOT NULL,
    [ChangedCategoryName] NVARCHAR (15) NOT NULL,
    [OldCategoryName]     NVARCHAR (15) NOT NULL
);

