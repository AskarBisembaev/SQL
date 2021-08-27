USE Northwind
GO

SELECT  dbo.Suppliers.SupplierID AS ID, 
dbo.Suppliers.ContactName AS Name,
CAST(dbo.Products.CategoryID AS nvarchar ) AS Count,  
CAST(COUNT(dbo.Products.CategoryID) AS nvarchar) AS CID
INTO newQuantity
FROM dbo.Suppliers INNER JOIN dbo.Products 
ON dbo.Suppliers.SupplierID = dbo.Products.SupplierID 
WHERE dbo.Suppliers.Fax is not NULL
GROUP BY dbo.Suppliers.SupplierID, dbo.Suppliers.ContactName
, dbo.Products.CategoryID
ORDER BY dbo.Suppliers.SupplierID ASC

