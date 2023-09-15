SELECT * FROM [Red30Tech].[dbo].[EmployeeDirectory$]
WHERE [First Name] = 'Grant'


WITH DirecReport AS
(SELECT [EmployeeID], [First Name], [Last Name], [Manager]
FROM [Red30Tech].[dbo].[EmployeeDirectory$]
WHERE [EmployeeID] = 42
UNION ALL
SELECT i.[EmployeeID], i.[First Name], i.[Last Name], i.[Manager]
FROM [Red30Tech].[dbo].[EmployeeDirectory$] AS i
JOIN DirecReport d 
ON i.[Manager] = d.[EmployeeID])


SELECT COUNT(*) as Direct_Reports FROM DirecReport
WHERE [EmployeeID] <> 42;

