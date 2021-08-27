USE Northwind
GO

/* запрос обновляет значение поля Discontinued
поля где было False и CategoryID = 1, значение меняется на True*/
UPDATE dbo.Products
SET Discontinued = 'False'
WHERE Discontinued = 'True' AND CategoryID = 1