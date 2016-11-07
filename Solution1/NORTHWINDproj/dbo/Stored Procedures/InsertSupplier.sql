CREATE PROCEDURE InsertSupplier(@CompanyName nvarchar(40))
AS
BEGIN
INSERT INTO dbo.Suppliers
(CompanyName)
VALUES 
(@CompanyName)
END
