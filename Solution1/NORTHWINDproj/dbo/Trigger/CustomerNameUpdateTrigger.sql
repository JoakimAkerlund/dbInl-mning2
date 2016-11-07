GO

CREATE TRIGGER [CustomerNameUpdateTrigger]
	ON [dbo].[Customers]
	FOR UPDATE
	AS
	BEGIN
		SET NOCOUNT ON
		INSERT INTO [dbo].CustomerContactNameChange
		(CustomerID,OldContactName,NewContactName,ChangedDate)
		SELECT i.CustomerID, d.ContactName,i.ContactName,GETDATE()
		from inserted i
		INNER JOIN deleted d ON i.CustomerID=d.CustomerID
		WHERE d.ContactName<>i.ContactName
	END

	GO
