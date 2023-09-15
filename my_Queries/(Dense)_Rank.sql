SELECT * FROM [Red30Tech].[dbo].[EmployeeDirectory$]


SELECT *,
RANK() OVER(ORDER BY [Last Name]) as Rank_,
DENSE_RANK() OVER(ORDER BY [Last Name]) as DenseRank_
FROM [Red30Tech].[dbo].[EmployeeDirectory$]
