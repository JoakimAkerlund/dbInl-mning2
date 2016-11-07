CREATE PROCEDURE SaySomething(@message NVARCHAR(50),@counter INT)
AS

WHILE (@counter >0)
BEGIN
PRINT @message+ ' ' +CAST(@counter AS NVARCHAR(2))
SET @counter=@counter-1
END