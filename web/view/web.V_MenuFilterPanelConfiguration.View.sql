USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_MenuFilterPanelConfiguration]    Script Date: 23/06/2022 10:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [web].[V_MenuFilterPanelConfiguration]
AS

SELECT m.id as ComponentId, c.JsonConfig FROM web.Menu m
INNER JOIN web.ComponentConfigs c on c.ComponentId = m.FilterPanelId




GO
