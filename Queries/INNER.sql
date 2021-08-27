USE Northwind
GO
SELECT 	dbo.Customers.CustomerID AS Заказчик, 
	  COUNT(dbo.Orders.OrderID) AS Количество
FROM    dbo.Customers INNER JOIN dbo.Orders 
ON 	dbo.Customers.CustomerID = dbo.Orders.CustomerID
GROUP BY dbo.Customers.CustomerID
--HAVING   (dbo.Customers.Country = N'USA')