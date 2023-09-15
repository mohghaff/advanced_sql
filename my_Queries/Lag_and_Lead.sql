SELECT * FROM [Red30Tech].[dbo].[SessionInfo$]


SELECT [Start Date], [End Date], [Session Name],
LAG([Session Name],1) OVER(ORDER BY [Start Date] ASC) AS previousSession,
LAG([Start Date],1) OVER(ORDER BY [Start Date] ASC) AS previousSessionStartDate,
LEAD([Session Name],1) OVER(ORDER BY [Start Date] ASC) AS nextSession,
LEAD([Start Date],1) OVER(ORDER BY [Start Date] ASC) AS nextSessionStartDate
FROM [Red30Tech].[dbo].[SessionInfo$]
WHERE [Room Name] = 'Room 102'