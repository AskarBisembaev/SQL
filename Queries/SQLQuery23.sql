USE Northwind
GO

/* запрос находит продукты
название которых начинается с буквы S*/
SELECT 'Product Name - ' + ProductName + ' price - '
       + CAST((UnitPrice) AS nvarchar)
FROM dbo.Products
WHERE ProductName LIKE 's%'