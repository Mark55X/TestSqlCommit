USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_AppointmentTypes]    Script Date: 23/06/2022 10:55:23 ******/
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
