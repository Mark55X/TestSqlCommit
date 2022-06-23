USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_AllComponentsPermissions]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [web].[V_AllComponentsPermissions]
as


SELECT [ComponentId]
      ,[GroupId]
      ,[CanRead]
      ,[CanCreate]
      ,[CanUpdate]
      ,[CanDelete]
  FROM [web].[ComponentPermissions]

UNION ALL

SELECT 
	T.ComponentId,
	G.ID AS GroupId,
	T.CanRead,
	T.CanCreate,
	T.CanUpdate,
	T.CanDelete
FROM (

Select 
	c.Id as ComponentId,
	0 AS CanRead,
	0 AS CanCreate,
	0 AS CanUpdate,
	0 AS CanDelete
from  
	[web].[Components] c
	LEFT JOIN [web].[ComponentPermissions] CP ON C.ID = CP.ComponentId
wHERE 
	CP.ComponentId IS NULL	) AS T, [WEB].GROUPS G




GO
