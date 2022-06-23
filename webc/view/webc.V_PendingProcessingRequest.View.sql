USE [RFID2022_OLD]
GO
/****** Object:  View [webc].[V_PendingProcessingRequest]    Script Date: 23/06/2022 11:15:34 ******/
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
