USE [RFID2022_OLD]
GO
/****** Object:  View [web].[CalendarResources]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [web].[CalendarResources] AS
SELECT   U.LastName + ' '+U.FirstName AS Username
		,Id
		,Color
FROM WEB.Users U

GO
