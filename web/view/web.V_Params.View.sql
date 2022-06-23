USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_Params]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE view [web].[V_Params] as 
SELECT [Id] as id	
      ,[Description] as description
  FROM [web].[Params]










GO
