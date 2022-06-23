USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [web].[V_Actions] AS
SELECT [Id]
      ,[Icon]
      ,[Name]
      ,[Description]
      ,[CreateRequired]
      ,[ReadRequired]
      ,[UpdateRequired]
      ,[DeleteRequired]
      ,[ActionType]
	  ,a.AdminScope
  FROM [web].[Actions] a
  WHERE AdminScope IS NULL OR AdminScope = 'admin'








GO
