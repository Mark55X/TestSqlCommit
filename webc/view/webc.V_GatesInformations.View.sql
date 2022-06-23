USE [RFID2022_OLD]
GO
/****** Object:  View [webc].[V_GatesInformations]    Script Date: 23/06/2022 10:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [webc].[V_GatesInformations]
AS
WITH LastStatus AS (
					SELECT 
							MAX(Id) AS LastStatus
							,GA.GateId
					FROM
						WEBC.GatesGeneralStatus AS GA
						GROUP BY GateId
					)
SELECT 
	   GA.[Id]
      ,GA.[ReaderIp]
      ,GA.[PlcIp]
      ,GA.[Code]
      ,GA.[Name]
      ,GA.[ShortName]
      ,GA.[OrderIndex]
      ,GA.[AntennasCount]
      ,GA.[PhotocellsCount]
      ,GA.[Fan]
      ,GA.[Enable]
      ,GA.[PlcPort]
      ,GA.[PlcRack]
      ,GA.[PlcSlot]
      ,GA.[PlcMemory]
      ,GA.[ReaderVendorId]
	  ,GAGS.[StatusDate]
      ,GAGS.[LightColor]
      ,GAGS.[ReaderStatus]
	  ,GAGS.[PlcInError]
      ,GAGS.[Temperature]
      ,GAGS.[FanStatus]
      ,GAGS.[Antenna1]
      ,GAGS.[Antenna2]
      ,GAGS.[Antenna3]
      ,GAGS.[Antenna4]
      ,GAGS.[PhotoCell1]
      ,GAGS.[PhotoCell2]
      ,GAGS.[PhotoCell3]
      ,GAGS.[PhotoCell4]
FROM
		WEBC.Gates GA 
	INNER JOIN 
		LastStatus LS
		ON GA.Id = LS.GateId
	INNER JOIN
		WEBC.GatesGeneralStatus GAGS
		ON LS.LastStatus = GAGS.Id
	WHERE GA.Enable = 1
		
GO
