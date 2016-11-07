Create PROCEDURE GetOrders(@CustomerID int)
AS
SELECT        c.CompanyName, c.ContactName, o.OrderDate
FROM            Customers AS c INNER JOIN
                         Orders AS o ON c.CustomerID = o.CustomerID
						 WHERE c.CustomerID=@CustomerID