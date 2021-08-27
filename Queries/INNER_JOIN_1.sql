USE Northwind
GO

SELECT dbo.Employees.FirstName +' '+ dbo.Employees.LastName, 
 COUNT( dbo.Employees.EmployeeID ) AS [how many times have worked]
FROM dbo.Employees INNER JOIN dbo.Orders
ON dbo.Employees.EmployeeID = dbo.Orders.EmployeeID
GROUP BY dbo.Employees.FirstName, dbo.Employees.LastName
ORDER BY dbo.Employees.FirstName ASC
