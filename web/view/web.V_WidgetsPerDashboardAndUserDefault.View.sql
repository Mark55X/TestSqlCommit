USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_WidgetsPerDashboardAndUserDefault]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW [web].[V_WidgetsPerDashboardAndUserDefault] AS
SELECT W.[Id]
      ,[Description]
      ,[WidgetType]
      ,[LayerIndex]
      ,W.DragEnabled
      ,W.[resizeEnabled]
      ,[compactEnabled]
      ,[MaxItemRows]
      ,[MinItemRows]
      ,[MaxItemCols]
      ,[MinItemCols]
      ,[MinItemArea]
      ,[MaxItemArea]
      ,[HasContent]
      ,[Icon]
      , CASE 
			WHEN l.StartGradientColor IS NULL OR l.StartGradientColor = ''  THEN '#72ade0' 
			ELSE l.StartGradientColor END AS startGradientColor
	  , CASE 
			WHEN l.EndGradientColor IS NULL OR l.EndGradientColor = ''  THEN '#3e709c' 
			ELSE l.EndGradientColor END AS endGradientColor
      ,[DashboardId]
      ,[UserId]
      ,[Cols]
      ,[Rows]
      ,[X]
      ,[Y]
      ,[SupportedDeviceType]
      ,[installed]
      ,[Title]
      ,[SubTitle]
      ,[JsonConfig]
      ,[RouteComponentId]
  FROM 
	[web].[V_WidgetsPerDashboardAndUser] AS WD
	INNER JOIN WEB.Widgets AS W
		ON W.Id = WD.WidgetId
	LEFT JOIN WEB.Layouts AS L
		ON L.Id = W.Id
	LEFT JOIN WEB.ComponentConfigs AS CC
		ON CC.ComponentId = W.Id AND CC.ConfigType = 'widget'

		

GO
