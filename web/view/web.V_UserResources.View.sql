USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_UserResources]    Script Date: 23/06/2022 11:15:29 ******/
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
