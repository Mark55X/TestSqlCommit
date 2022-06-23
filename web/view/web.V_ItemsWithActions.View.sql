USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [web].[V_ItemsWithActions]
AS
SELECT 
		co.[Id] 
		,'menu' 'type'
		,co.ActionGroupId
		,CASE WHEN NULLIF(ly.title, ' ')  IS NULL THEN co.id ELSE ly.Title END 'description'
FROM [web].Components co
INNER JOIN 
[web].[Menu] me ON co.Id = me.Id
INNER JOIN [web].Layouts ly ON ly.Id = me.Id
UNION ALL
SELECT 
		co.[Id] 
		,'component' 'type'
		,co.ActionGroupId
		,CASE WHEN NULLIF(ly.title, '')  IS NULL THEN co.id ELSE ly.Title END 'description'
FROM [web].Components co
LEFT JOIN 
[web].[Menu] me ON co.Id = me.Id
LEFT JOIN [web].Layouts ly ON ly.Id = co.Id
WHERE me.Id IS NULL
UNION ALL
SELECT 
		ag.Id
		,'group' 'type'
		,ag.id
		,ag.Description 
FROM [web].[ActionGroups] ag








GO
