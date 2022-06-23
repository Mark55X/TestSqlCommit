USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_UserMonitoredUsersRelaz]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE  VIEW [web].[V_UserMonitoredUsersRelaz] as 
Select distinct t.MonitoredUserId as Id,t.UserId
from (
		-- tutti gli utenti monitorati tranne l'utente stesso
		SELECT 
			[UserId]
			,[MonitoredUserId]
		FROM 
			[web].[UserMonitoredUsers]
		WHERE 
			userId<>MonitoredUserId

	Union ALL 
		-- tutti gli utenti per gli amministratori e utenti con completa visibilit�
		SELECT 
			u1.Id as UserId
			,u2.id as MonitoredUserId
		FROM 
			[web].Users u1, [web].Users u2
		WHERE 
			(u1.HasCompleteDataVisibility=1 OR u1.IsAdmin=1)
			and u1.id<>u2.id
			and u2.IsAdmin=0
	) as t








GO
