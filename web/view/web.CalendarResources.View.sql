USE [RFID2022_OLD]
GO
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
