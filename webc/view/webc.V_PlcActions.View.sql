USE [RFID2022_OLD]
GO
/****** Object:  View [webc].[V_PlcActions]    Script Date: 23/06/2022 10:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW  [webc].[V_PlcActions] 
		AS
		SELECT
				[Url] = 'commands/light/off'
				,[Description] = 'Spegni luci'
				,[Icon] = 'lightbulb'
				,color = 'gray'

UNION ALL
		SELECT
				[Url] = 'commands/light/green'
				,[Description] = 'Luce verde'
				,[Icon] = 'lightbulb'
				,color = 'green'
UNION ALL
		SELECT
				[Url] = 'commands/light/orange'
				,[Description] = 'Luce arancione'
				,[Icon] = 'lightbulb'
				,color = 'orange'
UNION ALL
		SELECT
				[Url] = 'commands/light/red'
				,[Description] = 'Luce rossa'
				,[Icon] = 'lightbulb'
				,color = 'red'
UNION ALL
		SELECT
				[Url] = 'commands/light/green-orange'
				,[Description] = 'Luce verde arancione'
				,[Icon] = 'lightbulb'
				,color = 'linear-gradient(177deg, rgba(62,224,36,1) 0%, rgba(200,175,25,1) 50%, rgba(255,145,0,1) 100%)'
UNION ALL
		SELECT
				[Url] = 'commands/reader/on-timer'
				,[Description] = 'Leggi tag'
				,[Icon] = 'memory'
				,color = 'white'

GO
