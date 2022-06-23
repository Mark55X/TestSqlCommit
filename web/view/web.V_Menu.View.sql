USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_Menu]    Script Date: 23/06/2022 10:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE view [web].[V_Menu] as 
SELECT 
		m.[Id]						as id
		,Isnull(m.[ParentId],'')		as parentId
		,m.[OrderIndex]					as orderIndex
		,Isnull(l.Title,m.id)			as [description]
		,l1.Title		     			as [parentDescription]
		,m.[Sidebar]					as sidebar
		,c.TypeId						as menuType
		,mt.[description]				as menuDescription
		,m.FileArchiveId				as fileArchiveId
		,m.FilterPanelId				as filterPanelId
 FROM 
		[web].Menu m
		INNER JOIN [web].Components c on c.Id = m.Id
		LEFT JOIN  [web].Layouts l on l.Id = m.Id
		LEFT JOIN  [web].Layouts l1 on l1.Id = m.ParentId
		LEFT JOIN  [WEB].ComponentTypes mt on mt.id =c.TypeId












GO
