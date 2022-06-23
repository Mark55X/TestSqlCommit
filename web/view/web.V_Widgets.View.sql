USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [web].[V_Widgets]
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
			,w.RouteComponentId
			, l.Icon 
			, l.FontColor as Color
			, CASE 
				WHEN l.StartGradientColor IS NULL OR l.StartGradientColor = '' THEN '#72ade0' 
				ELSE l.StartGradientColor END AS startGradientColor
			, CASE 
				WHEN l.EndGradientColor IS NULL OR l.EndGradientColor = '' THEN '#3e709c' 
				ELSE l.EndGradientColor END AS endGradientColor
			, dw.DashboardId
			,w.SupportedDeviceType
			, l.Title
			, l.SubTitle
			, cfg.JsonConfig
			--,CASE 
			--	WHEN cfg.ConfigType != 'widget' THEN NULL
			--	ELSE cfg.JsonConfig END as JsonConfig
			
FROM            
			web.widgets AS w 
			LEFT JOIN [web].Layouts AS l ON w.Id = l.Id
			INNER JOIN [WEB].DashboardWidgets dw on dw.widgetId = w.id
			LEFT JOIN [web].ComponentConfigs cfg on cfg.ComponentId = w.Id 	
WHERE cfg.ConfigType = 'widget' OR cfg.ConfigType IS NULL







GO
