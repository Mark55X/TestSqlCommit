USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [web].[V_UserResources] AS
SELECT 
		U.LastName + ' '+U.FirstName AS Description
		,u.Id 
		,u.Color
FROM web.Users AS U

GO
