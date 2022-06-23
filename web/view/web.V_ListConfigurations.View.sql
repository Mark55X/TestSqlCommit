USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_ListConfigurations]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [web].[V_ListConfigurations] as 
SELECT [ComponentId]
      ,[JsonConfig]
      ,[LastModifiedDate]
  FROM [web].[ComponentConfigs]
  WHERE [ConfigType] = 'list'
    UNION ALL 
  SELECT c.Id ComponentId
		,null JsonConfig
		,null LastUpdate
  FROM web.[Components] c 
  LEFT JOIN web.[ComponentConfigs] cc on cc.ComponentId = c.Id AND cc.ConfigType = 'list'
  WHERE c.TypeId = 'list'
  AND cc.JsonConfig IS NULL



GO
