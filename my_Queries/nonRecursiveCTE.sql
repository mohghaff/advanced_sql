SELECT * FROM [Red30Tech].[dbo].[OnlineRetailSales$]
WHERE [Order Total] >= (SELECT AVG([Order Total]) AS average_order FROM [Red30Tech].[dbo].[OnlineRetailSales$]);



WITH AVGTOTAL (AVG_TOTAL) AS (SELECT AVG([Order Total]) FROM [Red30Tech].[dbo].[OnlineRetailSales$])


SELECT * FROM [Red30Tech].[dbo].[OnlineRetailSales$], AVGTOTAL
WHERE [Order Total] >= AVG_TOTAL