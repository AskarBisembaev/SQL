USE Northwind
GO
/* ������ �� ����������� ���������� ��������
��� ������ �� null*/
SELECT 'Clients whose region is not null' + ' = '
+ CAST(COUNT(Region)AS nvarchar)
FROM Customers
WHERE (Region IS NOT NULL) 



