USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_ComponentConfigPerspectivesPerUser]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [web].[V_ComponentConfigPerspectivesPerUser]
	AS
	SELECT 
		   CCP.[Id]
		  ,[ComponentId]
		  ,[ConfigType]
		  ,U.Id AS UserId
		  ,[DefaultMode]
		  ,[Description]
		  ,[JsonConfig]
		  ,[OldJsonConfig]
	FROM web.ComponentConfigPerspectives AS CCP
	INNER JOIN web.Users U ON 1 = 1
	WHERE CCP.UserId is null AND u.IsEnable = 1
	UNION ALL 
	SELECT 
		   CCP.[Id]
		  ,[ComponentId]
		  ,[ConfigType]
		  ,U.Id AS UserId
		  ,[DefaultMode]
		  ,[Description]
		  ,[JsonConfig]
		  ,[OldJsonConfig]
	FROM web.ComponentConfigPerspectives AS CCP
	INNER JOIN web.Users U ON CCP.UserId = U.Id
	WHERE u.IsEnable = 1
GO
