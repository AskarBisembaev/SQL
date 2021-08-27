USE Northwind
GO

SELECT dbo.Products.ProductName AS [Product name], 
CAST(COUNT(dbo.[Order Details].OrderID) AS nvarchar) AS [Quantity of orders]
FROM dbo.Products INNER JOIN dbo.[Order Details]
ON dbo.Products.ProductID = dbo.[Order Details].ProductID
WHERE dbo.[Order Details].OrderID BETWEEN 10258 AND 10585
GROUP BY dbo.Products.ProductName, dbo.Products.ProductID
ORDER BY dbo.Products.ProductID
