USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_ComponentHelps]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE view [web].[V_ComponentHelps] as 
WITH ComponentLanguage AS (
SELECT CO.Id AS 'ComponentId', LG.ID as 'LanguageId'

FROM [web].Components AS CO, [web].Languages AS LG)

SELECT 
	ML.ComponentId, 
	MH.Help,
	ML.LanguageId,
	MH.LastModifiedDate 
from 
	ComponentLanguage AS ML
	LEFT JOIN [web].ComponentHelps as MH
	ON	MH.LanguageId = ML.LanguageId and mh.ComponentId = ML.ComponentId







GO
