USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_RealTimeNotificationRules]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE View [web].[V_RealTimeNotificationRules] as
SELECT [SenderId]
      ,[MessageTypeId]
      ,[RecepientId]
      ,[CreationDate]
      ,[CreationUser]
      ,[LastModifiedDate]
      ,[LastModifiedUser]
  FROM [web].[RealTimeNotificationRules]









GO
