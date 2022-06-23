USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_ComponentPermissions]    Script Date: 23/06/2022 10:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [web].[V_ComponentPermissions] as 

SELECT 
	   cp.[componentId]
      ,cp.[groupId]
      ,cp.[canRead]
      ,cp.[canCreate]
      ,cp.[canUpdate]
      ,cp.[canDelete]
	  ,l.Title as componentDescription 
	  ,c.TypeId			as componentTypeId
FROM 
	[WEB].ComponentPermissions cp
	INNER JOIN [WEB].Components C ON C.Id = CP.ComponentId 
	LEFT JOIN [web].Layouts l on l.id = c.Id
	
                           
UNION ALL

SELECT 
     t.[componentId]
    ,t.[groupId]
    ,t.[canRead]
    ,t.[canCreate]
    ,t.[canUpdate]
    ,t.[canDelete]
	,ISNULL(l.Title ,t.[componentId])  as componentDescription 
	,t.TypeId			as componentTypeId
FROM (		
		SELECT 
			c.Id as componentId
			,c.typeId as componentTypeId
			,g.Id as groupId
			,0 as canRead
			,0 as canCreate
			,0 as canUpdate
			,0 as canDelete
			,c.TypeId	
		FROM 
			[WEB].Components c, [WEB].Groups g
	 ) as t
	LEFT JOIN [WEB].ComponentPermissions Cp ON CP.ComponentId = T.componentId AND CP.GroupId=T.groupId
	LEFT JOIN [web].Layouts l on l.id = t.componentId
WHERE 
	CP.ComponentId IS NULL




GO
