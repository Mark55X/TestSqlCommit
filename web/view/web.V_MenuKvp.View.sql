USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [web].[V_MenuKvp] as 
Select 
		m.Id				as id
		,l.title			as [description]
from [web].Menu m
	left join [web].Layouts l on l.id = m.Id







GO
