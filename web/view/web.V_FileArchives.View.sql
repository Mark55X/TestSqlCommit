USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GOs






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
