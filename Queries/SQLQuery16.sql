USE Northwind
GO

/*запрос создает новую таблицу
в которой хранятся все продукты которы больше не продаются*/
SELECT ProductID, ProductName, UnitPrice
INTO DiscontinuedProducts
FROM  dbo.Products
WHERE Discontinued = 'True'

