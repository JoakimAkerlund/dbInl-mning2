CREATE PROCEDURE ProductDelete (@ProductID INT)
AS
DELETE FROM [Order Details] WHERE ProductID=@ProductID
DELETE FROM Products WHERE ProductID=@ProductID