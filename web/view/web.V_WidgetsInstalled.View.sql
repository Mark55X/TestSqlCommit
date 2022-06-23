USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_WidgetsInstalled]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [web].[V_WidgetsInstalled] AS
	WITH DashboardWithInstalled AS (
		SELECT DISTINCT DWI.DashboardId, DWI.UserId  FROM WEB.DashboardWidgetsInstalled AS DWI
	)
	--WIDGET DEFAULT PER UTENTE SENZA WIDGET INSTALLATI NELLA RISPETTIVA DASHBOARD
	SELECT 
		   DWD.[WidgetId]
		  ,DWD.[DashboardId]
		  ,DWD.[Cols]
		  ,DWD.[Rows]
		  ,DWD.[X]
		  ,DWD.[Y]
		  ,DWD.[CreationDate]
		  ,DWD.[CreationUser]
		  ,DWD.[LastModifiedDate]
		  ,DWD.[LastModifiedUser]
		  ,CPPU.UserId
		  ,'D' AS FoundIn
		  ,1 AS installed
	FROM 
		WEB.DashboardWidgetsDefault AS DWD
		INNER JOIN WEB.V_ComponentPermissionsPerUser AS CPPU
				ON CPPU.componentId = DWD.WidgetId AND CPPU.canRead = 1 
		LEFT JOIN DashboardWithInstalled AS DINST
				ON DINST.DashboardId = DWD.DashboardId AND CPPU.UserId = DINST.UserId
	WHERE 
		DINST.DashboardId IS NULL 
	UNION ALL
	--WIDGET INSTALLATI PER UTENTE
	SELECT 
		   DWI.[WidgetId]
		  ,DWI.[DashboardId]
		  ,DWI.[Cols]
		  ,DWI.[Rows]
		  ,DWI.[X]
		  ,DWI.[Y]
		  ,DWI.[CreationDate]
		  ,DWI.[CreationUser]
		  ,DWI.[LastModifiedDate]
		  ,DWI.[LastModifiedUser]
		  ,DWI.UserId
		  ,'I' AS FoundIn
		  ,1 AS installed
	FROM 
		WEB.DashboardWidgetsInstalled AS DWI


GO
