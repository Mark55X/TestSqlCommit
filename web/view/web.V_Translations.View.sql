USE [RFID2022_OLD]
GO
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
