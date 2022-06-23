USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_WidgetsPerDashboardAndUserOld]    Script Date: 23/06/2022 10:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [web].[V_WidgetsPerDashboardAndUserOld]
AS
SELECT        
			  w.Id 
			, w.Description
			, w.WidgetType
			, w.LayerIndex
			, w.DragEnabled AS dragEnable
			, w.ResizeEnabled AS resizeEnable
			, w.CompactEnabled AS compactEnable
			, w.MaxItemRows
			, w.MinItemRows
			, w.MaxItemCols
			, w.MinItemCols
			, w.MinItemArea
			, w.MaxItemArea
			, w.HasContent
			, l.Icon 
			, l.FontColor as Color
			, CASE 
				WHEN l.StartGradientColor IS NULL OR l.StartGradientColor = '' THEN '#72ade0' 
				ELSE l.StartGradientColor END AS startGradientColor
			, CASE 
				WHEN l.EndGradientColor IS NULL OR l.EndGradientColor = '' THEN '#3e709c' 
				ELSE l.EndGradientColor END AS endGradientColor
			, dw.DashboardId
			, cpu.UserId
			, wi.Cols
			, wi.Rows
			, wi.X
			, wi.Y
			,w.SupportedDeviceType
			, CASE 
				WHEN wi.WidgetId IS NULL THEN CAST(0 AS bit) 
				ELSE CAST(1 AS bit) END AS installed
			, l.Title
			, l.SubTitle
			,CASE 
				WHEN cfg.ConfigType != 'widget' THEN NULL
				ELSE cfg.JsonConfig END as JsonConfig
			,RouteComponentId
			
FROM            
			web.widgets AS w 
			LEFT JOIN [web].Layouts AS l ON w.Id = l.Id
			INNER JOIN [WEB].V_ComponentPermissionsPerUser cpu on cpu.componentId = w.Id
			INNER JOIN [WEB].DashboardWidgets dw on dw.widgetId = w.id
			LEFT JOIN [web].ComponentConfigs cfg on cfg.ComponentId = w.Id AND cfg.ConfigType = 'widget'
			INNER JOIN web.DashboardWidgetsInstalled AS wi ON w.Id = wi.WidgetId AND wi.DashboardId = dw.DashboardId and wi.UserId = cpu.UserId
			
WHERE	
			cpu.canRead=1
			













GO
