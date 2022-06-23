USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [web].[V_DashboardWidgetsDefault]
AS
SELECT [WidgetId] as Id
      ,[DashboardId]
      ,[Cols]
      ,[Rows]
      ,[X]
      ,[Y]
  FROM [web].[DashboardWidgetsDefault]









GO
