USE Northwind
GO
SELECT 	dbo.Customers.CustomerID AS ��������, 
	  COUNT(dbo.Orders.OrderID) AS ����������
FROM    dbo.Customers INNER JOIN dbo.Orders 
ON 	dbo.Customers.CustomerID = dbo.Orders.CustomerID
GROUP BY dbo.Customers.CustomerID
--HAVING   (dbo.Customers.Country = N'USA')