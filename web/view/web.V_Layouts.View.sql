USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_Layouts]    Script Date: 23/06/2022 11:15:29 ******/
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
