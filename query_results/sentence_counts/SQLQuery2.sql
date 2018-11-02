SELECT [TTracker].[dbo].[NoveltyCem].[UserID], /*[TTracker].[dbo].[NoveltyCem].[DocID], [TTracker].[dbo].[NoveltyCem].[SentenceID], */COUNT([TTracker].[dbo].[NoveltyCem].[UserID])
  FROM [TTracker].[dbo].[NoveltyCem] 
  WHERE [TTracker].[dbo].[NoveltyCem].[PID]=140 AND  [TTracker].[dbo].[NoveltyCem].[Novelty]=1
  GROUP BY [TTracker].[dbo].[NoveltyCem]. [UserID]
 UNION
 SELECT [TTracker].[dbo].[NoveltyCem].[UserID], COUNT([TTracker].[dbo].[NoveltyCem].[UserID])
  FROM [TTracker].[dbo].[NoveltyCem] 
  WHERE [TTracker].[dbo].[NoveltyCem].[PID]=140 AND  [TTracker].[dbo].[NoveltyCem].[Novelty]=2
  GROUP BY [TTracker].[dbo].[NoveltyCem]. [UserID]
   UNION
 SELECT [TTracker].[dbo].[NoveltyCem].[UserID], COUNT([TTracker].[dbo].[NoveltyCem].[UserID])
  FROM [TTracker].[dbo].[NoveltyCem] 
  WHERE [TTracker].[dbo].[NoveltyCem].[PID]=140 AND  [TTracker].[dbo].[NoveltyCem].[Novelty]=3
  GROUP BY [TTracker].[dbo].[NoveltyCem]. [UserID]