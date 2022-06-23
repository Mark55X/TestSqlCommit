USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO















CREATE VIEW [web].[V_ItemsActions]
AS
WITH items AS
(
SELECT * 
FROM [web].[V_ItemsWithActions]
),
itemsActions AS (
SELECT it.id as componentId, aag.*,'group' as actionItemType FROM items it
INNER JOIN [web].ActionActionGroups aag ON it.id = aag.ActionGroupId
WHERE it.type = 'group'

UNION ALL 

SELECT it.id as componentId,  aag.* ,'group' as actionItemType FROM items it
INNER JOIN [web].Components co ON co.Id = it.id 
INNER JOIN [web].ActionActionGroups  aag on co.ActionGroupId = aag.ActionGroupId
WHERE it.type != 'group'
UNION ALL 

SELECT it.id as componentId,  aag.*,'component' as actionItemType  FROM items it
INNER JOIN [web].Components co ON co.Id = it.id
INNER JOIN [web].ActionComponents  aag on it.id = aag.ComponentId
WHERE it.type != 'group'
)
SELECT ia.*,
	   ac.[Id]
      ,ac.[Icon]
      ,ac.[Name]
      ,ac.[Description]
      ,ac.[CreateRequired]
      ,ac.[ReadRequired]
      ,ac.[UpdateRequired]
      ,ac.[DeleteRequired]
      ,ac.[ActionType]
	  ,ac.AdminScope
FROM itemsActions ia
INNER JOIN [web].Actions ac ON ia.ActionId = ac.Id













GO
