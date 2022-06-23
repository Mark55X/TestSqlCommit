USE [RFID2022_OLD]
GO
/****** Object:  View [webc].[V_RealTimeNotificationRules]    Script Date: 23/06/2022 10:55:28 ******/
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
