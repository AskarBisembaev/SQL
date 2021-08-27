USE Northwind
GO

SELECT dbo.newQuantity.ID, 
dbo.newQuantity.Name, 
dbo.Categories.CategoryName  , 
 dbo.newQuantity.CID AS [Quantity of orders]

FROM dbo.Categories INNER JOIN dbo.newQuantity
ON dbo.Categories.CategoryID = dbo.newQuantity.Count

GROUP BY dbo.newQuantity.ID, 
dbo.newQuantity.Name, 
dbo.Categories.CategoryName,
dbo.newQuantity.CID
