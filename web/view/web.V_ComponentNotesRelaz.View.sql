USE [RFID2022_OLD]
GO
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
