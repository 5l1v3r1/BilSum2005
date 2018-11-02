SELECT [TTracker].[dbo].[NoveltyCem].[PID], [TTracker].[dbo].[NoveltyCem].[DocID], [TTracker].[dbo].[NoveltyCem].[SentenceID], [TTracker].[dbo].[NoveltyCem].[UserID], [TTracker].[dbo].[NoveltyCem].[Novelty], [TTracker].[dbo].[Sentences].[Text]
  FROM [TTracker].[dbo].[NoveltyCem] 
	INNER JOIN [TTracker].[dbo].[Sentences] 
	ON [TTracker].[dbo].[NoveltyCem].[SentenceID]=[TTracker].[dbo].[Sentences].[SentenceID]
		AND [TTracker].[dbo].[NoveltyCem].[DocID]=[TTracker].[dbo].[Sentences].[DocID]
  WHERE [TTracker].[dbo].[NoveltyCem].[PID]=313
	AND [TTracker].[dbo].[NoveltyCem].[SentenceID]=[TTracker].[dbo].[Sentences].[SentenceID]