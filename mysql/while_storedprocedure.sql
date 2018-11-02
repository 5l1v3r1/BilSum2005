DECLARE @p1 FLOAT 

SET @p1 = (SELECT MIN([TTracker].[dbo].[NoveltyCem].PID )
FROM [TTracker].[dbo].[NoveltyCem])

WHILE EXISTS ( SELECT DISTINCT [TTracker].[dbo].[NoveltyCem].PID 
FROM [TTracker].[dbo].[NoveltyCem] WHERE [TTracker].[dbo].[NoveltyCem].PID >= @p1)
    BEGIN
    
    SELECT DISTINCT [TTracker].[dbo].[NoveltyCem].PID 
	FROM [TTracker].[dbo].[NoveltyCem] WHERE [TTracker].[dbo].[NoveltyCem].PID = @p1
 
	EXEC x3 @p1
	
	/*SET @p1 = @p1 + 40*/
	SET @p1 = (SELECT MIN([TTracker].[dbo].[NoveltyCem].PID)
	FROM [TTracker].[dbo].[NoveltyCem] WHERE [TTracker].[dbo].[NoveltyCem].PID >@p1)
	END
