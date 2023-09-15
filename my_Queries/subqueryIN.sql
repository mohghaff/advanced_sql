
SELECT * FROM [Red30Tech].[dbo].[SessionInfo$]
SELECT * FROM [Red30Tech].[dbo].[SpeakerInfo$]


-- Finding the info of employees who work for Two Trees Olive Oil

SELECT [Speaker Name],[Session Name], [Start Date], [End Date], [Room Name]
FROM [Red30Tech].[dbo].[SessionInfo$]
WHERE [Speaker Name] in
						(SELECT [Name] FROM [Red30Tech].[dbo].[SpeakerInfo$]
						WHERE [Organization] = 'Two Trees Olive Oil');



SELECT [Speaker Name],[Session Name], [Start Date], [End Date], [Room Name]
FROM [Red30Tech].[dbo].[SessionInfo$] as si
JOIN (SELECT [Name] FROM [Red30Tech].[dbo].[SpeakerInfo$] 
		WHERE [Organization] = 'Two Trees Olive Oil') AS sp
ON si.[Speaker Name] = sp.[Name];




