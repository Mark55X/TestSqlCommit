USE [RFID2022_OLD]
GO
/****** Object:  View [webc].[V_UserMonitoredUsersRelaz]    Script Date: 23/06/2022 11:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE  VIEW [webc].[V_UserMonitoredUsersRelaz] as 
Select distinct Id, UserId
from (
		-- tutti gli utenti monitorati tranne l'utente stesso
		SELECT 
			[UserId]			
			,[MonitoredUserId]			as Id
		FROM 
			[web].[UserMonitoredUsers]
		WHERE 
			userId<>MonitoredUserId

	
		
	UNION ALL
		-- tutti gli utenti per gli amministratori e utenti con completa visibilit�
		SELECT 
			-1							as UserId
			,[MonitoredUserId]			as Id
		FROM 
			[web].[UserMonitoredUsers]
	) as t

		

		









GO
