USE Northwind
GO

/*������ ������� ����� �������
� ������� �������� ��� �������� ������ ������ �� ���������*/
SELECT ProductID, ProductName, UnitPrice
INTO DiscontinuedProducts
FROM  dbo.Products
WHERE Discontinued = 'True'

