USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_GridConfigurations]    Script Date: 23/06/2022 10:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [web].[V_GridConfigurations] as 
SELECT [ComponentId]
	  ,[Id]
	  ,[Description]
      ,[JsonConfig]
      ,[LastModifiedDate]
  FROM [web].[ComponentConfigPerspectives]
  WHERE [ConfigType] = 'grid'
  UNION ALL 
  SELECT c.Id ComponentId
		,null Id
		,null Description
		,null JsonConfig
		,null LastModifiedDate
  FROM web.[Components] c
  LEFT JOIN web.[ComponentConfigPerspectives] ccp on ccp.ComponentId = c.Id AND ccp.ConfigType = 'grid'
  WHERE c.TypeId = 'grid'
  AND ccp.JsonConfig IS NULL





GO
