CREATE PROCEDURE CustomerGetOrders(@CustomerID nvarchar(50))
AS
SELECT        c.CompanyName, c.ContactName, o.OrderDate
FROM            Customers c INNER JOIN
                         Orders o ON c.CustomerID = o.CustomerID
						 WHERE c.CustomerID=@CustomerID