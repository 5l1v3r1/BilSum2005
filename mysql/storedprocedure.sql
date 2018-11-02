-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Çaðrý Toraman
-- Create date: 28.03.12
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE x3
	-- Add the parameters for the stored procedure here
	@pid FLOAT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT [TTracker].[dbo].[NoveltyCem].Novelty, CAST(COUNT([TTracker].[dbo].[NoveltyCem].SentenceID) AS FLOAT)/3
	  FROM [TTracker].[dbo].[NoveltyCem] 
	  WHERE [TTracker].[dbo].[NoveltyCem].[PID]=@pid
	GROUP BY [TTracker].[dbo].[NoveltyCem].Novelty
END
GO
