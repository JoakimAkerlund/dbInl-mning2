CREATE PROCEDURE InsertProduct(@ProductName nvarchar(40), @QuantityPerUnit nvarchar(20),@UnitPrice money)
AS
BEGIN
INSERT INTO Products
(ProductName,QuantityPerUnit,UnitPrice)
VALUES
(@ProductName,@QuantityPerUnit,@UnitPrice)
END