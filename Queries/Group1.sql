USE Northwind
GO

SELECT 'Total number of products in category   '
+ CAST(CategoryID AS nvarchar) + '  =  ' 
+ CAST(COUNT(CategoryID) AS nvarchar) + '  Products'
FROM dbo.Products
GROUP BY dbo.Products.CategoryID