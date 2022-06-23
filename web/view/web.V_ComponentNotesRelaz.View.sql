USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_ComponentNotesRelaz]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE VIEW [web].[V_ComponentNotesRelaz] as 
SELECT 
		c.Id
		,r.Id as UserId
FROM 
		[web].Users r
		LEFT JOIN [web].ComponentNotes c ON c.UserId = r.Id










GO
