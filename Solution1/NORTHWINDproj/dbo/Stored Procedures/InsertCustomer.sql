CREATE PROCEDURE [dbo].[InsertCustomer](@CustomerID nchar(5),@CompanyName nvarchar(40),@ContactName nvarchar(30))
AS
BEGIN
INSERT INTO Customers
(CustomerID,CompanyName,ContactName)
VALUES
(@CustomerID,@CompanyName,@ContactName)
END