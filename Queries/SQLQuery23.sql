USE Northwind
GO

/* ������ ������� ��������
�������� ������� ���������� � ����� S*/
SELECT 'Product Name - ' + ProductName + ' price - '
       + CAST((UnitPrice) AS nvarchar)
FROM dbo.Products
WHERE ProductName LIKE 's%'