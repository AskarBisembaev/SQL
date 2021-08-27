USE Northwind
GO
/* Запрос на определение количества клиентов
чей регион не null*/
SELECT 'Clients whose region is not null' + ' = '
+ CAST(COUNT(Region)AS nvarchar)
FROM Customers
WHERE (Region IS NOT NULL) 



