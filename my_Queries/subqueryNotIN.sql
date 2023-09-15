
SELECT * FROM [Red30Tech].[dbo].[OnlineRetailSales$]
SELECT * FROM [Red30Tech].[dbo].[ConventionAttendees$]

SELECT [First name], [Last name],[State],[Email], [Phone Number]
FROM [Red30Tech].[dbo].[ConventionAttendees$]
WHERE [State] NOT IN (SELECT [CustState] FROM  [Red30Tech].[dbo].[OnlineRetailSales$])


SELECT [First name], [Last name],[State],[Email], [Phone Number]
FROM [Red30Tech].[dbo].[ConventionAttendees$] AS o
WHERE NOT EXISTS
				(SELECT [CustState] FROM  [Red30Tech].[dbo].[OnlineRetailSales$] as i
				WHERE o.[State] = i.[CustName])