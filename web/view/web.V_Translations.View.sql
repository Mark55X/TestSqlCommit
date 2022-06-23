USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_Translations]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE VIEW [web].[V_Translations]
AS
SELECT  
	 Id      
	,LanguageId
	,ItalianText
	,TranslatedText
FROM            
	[web].Translations











GO
