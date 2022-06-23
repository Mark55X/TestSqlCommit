USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [web].[V_MenuFilterPanelConfiguration]
AS

SELECT m.id as ComponentId, c.JsonConfig FROM web.Menu m
INNER JOIN web.ComponentConfigs c on c.ComponentId = m.FilterPanelId




GO
