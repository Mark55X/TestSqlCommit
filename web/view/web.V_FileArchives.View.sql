USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_FileArchives]    Script Date: 23/06/2022 10:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [web].[V_FileArchives] as 
SELECT [Id]
	  ,[Description]
      ,[UploadAllowed]
      ,[RenameAllowed]
      ,[DeleteAllowed]
	  ,[RelatedToUser]
	  ,[Params]
  FROM [web].[FileArchives]









GO
