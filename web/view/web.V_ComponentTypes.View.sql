USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_ComponentTypes]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [web].[V_ComponentTypes] as 
SELECT [Id]
      ,[Description]
  FROM [web].[ComponentTypes]











GO
