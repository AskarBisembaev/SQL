USE Northwind
GO

/* ������ ��������� �������� ���� Discontinued
���� ��� ���� False � CategoryID = 1, �������� �������� �� True*/
UPDATE dbo.Products
SET Discontinued = 'False'
WHERE Discontinued = 'True' AND CategoryID = 1