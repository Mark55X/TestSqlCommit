USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_MenuLayoutColors]    Script Date: 23/06/2022 10:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE View [web].[V_MenuLayoutColors]
as
SELECT
		M.ID AS LayoutId
		,M.ParentId as LayoutParentId
		,L.StartGradientColor as LayoutColor
		,IsNull(L.InheritsColors,0) as InheritsColors
FROM
		[WEB].LAYOUTS L
		INNER JOIN [WEB].MENU M ON L.Id = M.Id
--where
--		l.StartGradientColor is not null










GO
