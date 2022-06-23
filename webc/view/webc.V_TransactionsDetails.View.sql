USE [RFID2022_OLD]
GO
/****** Object:  View [webc].[V_TransactionsDetails]    Script Date: 23/06/2022 10:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [webc].[V_TransactionsDetails] as 
Select [Id]
      ,[TransactionId]
      ,[Epc]
      ,[EpcToAscii]
      ,[Rssi]
      ,[AntennaId]
      ,[Speed]
      ,[FilterTags]
      ,[ReadsCount]
      ,[CreationDate]
      ,[CreationUser]
      ,[LastModifiedDate]
      ,[LastModifiedUser] from [webc].TransactionsDetails
where EpcToAscii like 'MS%'
GO
