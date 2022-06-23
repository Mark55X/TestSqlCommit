USE [RFID2022_OLD]
GO
/****** Object:  View [webc].[V_NeverNotifiedToExternalRepositoryUpdateLog]    Script Date: 23/06/2022 10:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE View [webc].[V_NeverNotifiedToExternalRepositoryUpdateLog]
AS

SELECT
	 tt.Id as TransactionId
	 ,'Processing' as Status
	 ,tt.CreationDate as ProcessingDate
FROM 
	[webc].Transactions tt
	LEFT JOIN [webc].ExternalRepositoryUpdateLog ul on tt.Id = ul.TransactionId	
WHERE 
	ul.TransactionId is null
GO
