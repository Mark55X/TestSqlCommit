USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_ComponentNotes]    Script Date: 23/06/2022 10:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE VIEW [web].[V_ComponentNotes]
AS
SELECT 
	   [Id]
      ,[ComponentId]
      ,[UserId]
      ,[Title]
      ,[Message]
      ,[Date]
      ,[Color]
      ,[Visible]
      ,[Xaxis]
      ,[Yaxis]
FROM            
	  [web].ComponentNotes










GO
