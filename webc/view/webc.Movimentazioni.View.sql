USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE View [webc].[Movimentazioni] AS
SELECT 
		TD.ID				AS Id
		,T.Id				AS NrTransazione
		,G.ReaderIp			AS ReaderIp
		,G.Code				AS Codice
		,G.Name				AS Descrizione
		,G.WorkingMode		AS WorkingMode
		,TD.Epc				AS TagId
		,TD.EpcToAscii		AS TagValue
		,T.Direction		AS Verso
		,G.ShortName		AS PostazioneId
		,TD.Rssi			AS Rssi
		,TD.AntennaId		AS Antenna
		,T.ReaderDate		AS DataReader
		,T.DigitalInputs	AS InputDigitali
		,TD.Speed			AS Speed
		,TD.FilterTags		AS StatiTag
		,T.CreationDate		AS Data

FROM
		[WEBC].Transactions T
		INNER JOIN [WEBC].TransactionsDetails TD ON TD.TransactionId = T.ID
		INNER JOIN [WEBC].Gates G ON T.GateId = G.Id
		LEFT JOIN  [WEBC].TransactionsDetailsBlackList TDBL ON TDBL.Epc = TD.Epc
WHERE 
		TDBL.Epc is null


GO
