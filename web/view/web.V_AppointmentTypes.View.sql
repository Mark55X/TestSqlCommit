USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW [web].[V_AppointmentTypes]
AS
SELECT [Id]
      ,[Description]
      ,[StartGradient]
      ,[EndGradient]
      ,[CreationMenu]
      ,[CreationParameters]
      ,[UpdateMenu]
      ,[UpdateParameters]
      ,[Icon]
      ,[DragEnabled]
	  ,[Custom]
  FROM [web].[AppointmentTypes]







GO
