USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [web].[V_FormConfigurations] as 
SELECT [ComponentId]
      ,[JsonConfig]
      ,[LastModifiedDate]
  FROM [web].[ComponentConfigs]
  WHERE [ConfigType] = 'form'
    UNION ALL 
  SELECT c.Id ComponentId
		,null JsonConfig
		,null LastUpdate
  FROM web.[Components] c 
  LEFT JOIN web.[ComponentConfigs] cc on cc.ComponentId = c.Id AND cc.ConfigType = 'form'
  WHERE c.TypeId = 'form'
  AND cc.JsonConfig IS NULL










GO
