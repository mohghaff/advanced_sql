SELECT * FROM [Red30Tech].[dbo].[OnlineRetailSales$]
WHERE [CustName] like 'Bo%'

WITH TOPTHREE AS
(SELECT [OrderNum], [OrderDate],[CustName],[ProdCategory],[ProdName],[Order Total],
ROW_NUMBER() OVER(PARTITION BY [ProdCategory] ORDER BY [Order Total] DESC) AS top_three
FROM [Red30Tech].[dbo].[OnlineRetailSales$]
WHERE [CustName] = 'Boehm Inc.')

SELECT * FROM TOPTHREE WHERE top_three in (1,2,3) 

