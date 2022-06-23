USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_Actions]    Script Date: 23/06/2022 10:55:23 ******/
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
