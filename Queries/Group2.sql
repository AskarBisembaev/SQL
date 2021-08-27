USE Northwind
GO

SELECT 'Products with price ' + 
CAST( UnitPrice AS nvarchar),
COUNT(UnitPrice) AS [Counts]
FROM dbo.Products 
WHERE UnitPrice BETWEEN 15 AND 100 
GROUP BY UnitPrice