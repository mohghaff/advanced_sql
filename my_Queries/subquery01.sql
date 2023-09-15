use Red30Tech;

select TOP(5) * FROM [Red30Tech].[dbo].[OnlineRetailSales$];


-- Orders that are higher than or equal to the average of all ordres

SELECT * FROM [Red30Tech].[dbo].[OnlineRetailSales$]
WHERE [Order Total] >= (SELECT AVG([Order Total]) AS average_order FROM [Red30Tech].[dbo].[OnlineRetailSales$]);