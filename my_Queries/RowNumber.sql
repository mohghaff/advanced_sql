SELECT * FROM [Red30Tech].[dbo].[OnlineRetailSales$]

SELECT [CustName], COUNT(DISTINCT OrderNum)
FROM [Red30Tech].[dbo].[OnlineRetailSales$]
GROUP BY [CustName]

SELECT [OrderNum], [OrderDate],[CustName],[ProdName],[Quantity],
ROW_NUMBER() OVER(PARTITION BY [CustName] ORDER BY [OrderDate] DESC) as row_num
FROM [Red30Tech].[dbo].[OnlineRetailSales$]

WITH ROW_NUMBERS AS 
(SELECT [OrderNum], [OrderDate],[CustName],[ProdName],[Quantity],
ROW_NUMBER() OVER(PARTITION BY [CustName] ORDER BY [OrderDate] DESC) as row_num
FROM [Red30Tech].[dbo].[OnlineRetailSales$])

SELECT * FROM ROW_NUMBERS WHERE row_num = 1