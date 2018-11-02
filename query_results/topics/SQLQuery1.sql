SELECT DISTINCT [TTracker].[dbo].[Profiles].[PID], [TTracker].[dbo].[Profiles].[Title]
  FROM [TTracker].[dbo].[NoveltyCem] 
	INNER JOIN [TTracker].[dbo].[Profiles] 
	ON [TTracker].[dbo].[NoveltyCem].[PID]=[TTracker].[dbo].[Profiles].[PID]	