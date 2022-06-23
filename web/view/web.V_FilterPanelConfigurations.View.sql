USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_FilterPanelConfigurations]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [web].[V_FilterPanelConfigurations] as 
SELECT [ComponentId]
      ,[JsonConfig]
      ,[LastModifiedDate]
  FROM [web].[ComponentConfigs]
  WHERE [ConfigType] = 'filter-panel'
  UNION ALL 
  SELECT c.Id ComponentId
		,null JsonConfig
		,null LastUpdate
  FROM web.[Components] c 
  LEFT JOIN web.[ComponentConfigs] cc on cc.ComponentId = c.Id AND cc.ConfigType = 'filter-panel'
  WHERE c.TypeId = 'filter-panel'
  AND cc.JsonConfig IS NULL



GO
