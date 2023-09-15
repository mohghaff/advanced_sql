SELECT * FROM [Red30Tech].[dbo].[ConventionAttendees$]

WITH DENSERANKS AS
(SELECT *,
DENSE_RANK() OVER(PARTITION BY [State] ORDER BY [Registration Date]) as DenseRank_
FROM [Red30Tech].[dbo].[ConventionAttendees$]
)

SELECT * FROM DENSERANKS 
WHERE DenseRank_ in (1,2,3)


WITH RANKS AS
(SELECT *,
RANK() OVER(PARTITION BY [State] ORDER BY [Registration Date]) as Rank_
FROM [Red30Tech].[dbo].[ConventionAttendees$]
)

SELECT * FROM RANKS 
WHERE Rank_ in (1,2,3)