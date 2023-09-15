SELECT * FROM [Red30Tech].[dbo].[Inventory$]



SELECT [ProdCategory], [ProdNumber], [ProdName]
FROM [Red30Tech].[dbo].[Inventory$]
WHERE [In Stock] < (SELECT AVG([In Stock]) FROM [Red30Tech].[dbo].[Inventory$])
