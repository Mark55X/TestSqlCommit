﻿USE [RFID2022_OLD]
GO
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
