USE [RFID2022_OLD]
GO
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
