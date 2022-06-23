USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_ComponentConfigs]    Script Date: 23/06/2022 10:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE VIEW [web].[V_ComponentConfigs] AS
SELECT [ComponentId]
      ,[JsonConfig]
      ,[OldJsonConfig]
      ,[ConfigType]
      ,[LastModifiedDate] as LastUpdateDate
FROM [web].[ComponentConfigs]










GO
