﻿USE [RFID2022_OLD]
GO
/****** Object:  View [web].[TablesRelaz]    Script Date: 23/06/2022 10:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE View [web].[TablesRelaz] as 
SELECT DISTINCT
	tbl.TABLE_SCHEMA as TableSchema
	, tbl.TABLE_NAME as TableName 	
FROM INFORMATION_SCHEMA.TABLES AS tbl
where tbl.TABLE_NAME like '%Relaz'






GO
