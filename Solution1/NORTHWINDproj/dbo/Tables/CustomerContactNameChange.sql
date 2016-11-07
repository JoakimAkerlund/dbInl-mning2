CREATE TABLE [dbo].[CustomerContactNameChange]
(
	[CostumerChangeID]int IDENTITY NOT NULL,
	[CustomerID] nchar(5) NOT NULL,
	[OldContactName] nvarchar(30) NOT NULL,
	[NewContactName] nvarchar(30) NOT NULL,
	[ChangedDate] datetime NOT NULL
	PRIMARY KEY CLUSTERED
	(
	CostumerChangeID ASC
	)
	

	
)
