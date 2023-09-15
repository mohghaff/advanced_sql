SELECT * FROM [Red30Tech].[dbo].[OnlineRetailSales$]


WITH orders AS (
SELECT  OrderDate, SUM(Quantity) AS DailyQuantity
FROM [Red30Tech].[dbo].[OnlineRetailSales$]
WHERE [ProdCategory] = 'Drones'
GROUP BY OrderDate)

SELECT OrderDate, DailyQuantity,
LAG(DailyQuantity,1) OVER(ORDER BY [OrderDate] ASC) as prevQuant_1,
LAG(DailyQuantity,2) OVER(ORDER BY [OrderDate] ASC) as prevQuant_2,
LAG(DailyQuantity,3) OVER(ORDER BY [OrderDate] ASC) as prevQuant_3,
LAG(DailyQuantity,4) OVER(ORDER BY [OrderDate] ASC) as prevQuant_4,
LAG(DailyQuantity,5) OVER(ORDER BY [OrderDate] ASC) as prevQuant_5
FROM orders
