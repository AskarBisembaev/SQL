USE Northwind
GO

SELECT 'Quantity of orders with ID    ' 
+ CAST(dbo.[Order Details].ProductID AS nvarchar),
COUNT(dbo.Orders.OrderID) AS [Order count]
FROM dbo.Orders INNER JOIN dbo.[Order Details]
ON dbo.Orders.OrderID = dbo.[Order Details].OrderID
WHERE dbo.[Order Details].OrderID BETWEEN 10258 AND 10585
GROUP BY dbo.[Order Details].ProductID
--ORDER BY [Order count] ASC
ORDER BY dbo.[Order Details].ProductID
