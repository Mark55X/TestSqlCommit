﻿USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_Dashboards]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [web].[V_Dashboards] as
SELECT [Id]
      ,[Description]
	  ,[IsAdmin]
	  ,[IsDefault]
FROM web.[Dashboards]










GO
