# SQL
Here are examples of _queries_ database.

I used:

1. **`SQL`** to create queries
1. the ***`Тorthwind database`*** from which I took the data
---
Here is an example of one of the requests:

```
USE Northwind
GO

SELECT dbo.Products.ProductName AS [Product name], 
CAST(COUNT(dbo.[Order Details].OrderID) AS nvarchar) AS [Quantity of orders]
FROM dbo.Products INNER JOIN dbo.[Order Details]
ON dbo.Products.ProductID = dbo.[Order Details].ProductID
WHERE dbo.[Order Details].OrderID BETWEEN 10258 AND 10585
GROUP BY dbo.Products.ProductName, dbo.Products.ProductID
ORDER BY dbo.Products.ProductID```
