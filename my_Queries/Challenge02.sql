
SELECT * FROM [Red30Tech].[dbo].[Inventory$]

WITH AVGSTOCK (AVG_STOCK) AS
(SELECT AVG([In Stock]) FROM [Red30Tech].[dbo].[Inventory$]
)


SELECT [ProdCategory],[ProdNumber],[ProdName]
FROM [Red30Tech].[dbo].[Inventory$], AVGSTOCK
WHERE [In Stock] < AVG_STOCK;