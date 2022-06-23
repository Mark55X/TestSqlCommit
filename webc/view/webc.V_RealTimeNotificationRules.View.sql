USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE View [webc].[V_RealTimeNotificationRules] as
SELECT [SenderId]
      ,[MessageTypeId]
      ,[RecepientId]
      ,[CreationDate]
      ,[CreationUser]
      ,[LastModifiedDate]
      ,[LastModifiedUser]
  FROM [web].[RealTimeNotificationRules]

GO
