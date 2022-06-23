USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [web].[V_WidgetsPerDashboardAndUser] AS
	SELECT 
		   DW.[WidgetId]
		  ,DW.[DashboardId]
		  ,0 AS [Cols]
		  ,0 AS [Rows]
		  ,0 AS [X]
		  ,0 AS [Y]
		  ,DW.[CreationDate]
		  ,DW.[CreationUser]
		  ,DW.[LastModifiedDate]
		  ,DW.[LastModifiedUser]
		  ,CPPU.UserId
		  ,'' AS FoundIn
		  ,0 AS installed
	FROM 
		WEB.DashboardWidgets AS DW
		INNER JOIN WEB.V_ComponentPermissionsPerUser AS CPPU
			ON DW.WidgetId = CPPU.componentId AND CPPU.canRead = 1
		LEFT JOIN WEB.[V_WidgetsInstalled] AS IW
			ON IW.WidgetId = DW.WidgetId AND CPPU.UserId = IW.UserId
		WHERE IW.WidgetId IS NULL
	UNION 
	SELECT 
		   [WidgetId]
		  ,[DashboardId]
		  ,[Cols]
		  ,[Rows]
		  ,[X]
		  ,[Y]
		  ,[CreationDate]
		  ,[CreationUser]
		  ,[LastModifiedDate]
		  ,[LastModifiedUser]
		  ,UserId
		  ,FoundIn
		  ,Installed
	FROM
		WEB.[V_WidgetsInstalled]





GO
