USE [RFID2022_OLD]
GO
/****** Object:  View [webc].[V_FormConfigurations]    Script Date: 23/06/2022 10:55:28 ******/
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
