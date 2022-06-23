USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [webc].[V_FormConfigurations] as 
SELECT [ComponentId]
      ,[JsonConfig]
      ,LastModifiedDate
  FROM [web].[ComponentConfigs]
  WHERE [ConfigType] = 'form'

GO
