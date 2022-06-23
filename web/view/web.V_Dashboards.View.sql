USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

s




CREATE VIEW [web].[V_Dashboards] as
SELECT [Id]
      ,[Description]
	  ,[IsAdmin]
	  ,[IsDefault]
FROM web.[Dashboards]










GO
