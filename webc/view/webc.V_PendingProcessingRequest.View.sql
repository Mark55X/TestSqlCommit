USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE view [webc].[V_PendingProcessingRequest] as
Select 
	TransactionId 
from 
	[webc].[ExternalRepositoryUpdateLog]
where 
	Status ='Processing'
	and ProcessingDate < DATEADD(HOUR,-24,GetDate())


GO
