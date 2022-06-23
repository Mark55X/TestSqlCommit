USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_MenuKvp]    Script Date: 23/06/2022 11:15:29 ******/
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
