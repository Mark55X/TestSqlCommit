USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/****** Script per comando SelectTopNRows da SSMS  ******/

CREATE VIEW [web].[V_Layouts] as 
SELECT [Id],
		[Icon],
		[Title],
		[ShortTitle],
		[SubTitle],
		[StartGradientColor],
		[InheritsColors],
		[FontColor],
		[EndGradientColor]
FROM [web].[Layouts]










GO
