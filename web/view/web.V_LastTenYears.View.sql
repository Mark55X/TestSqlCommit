﻿USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_LastTenYears]    Script Date: 23/06/2022 10:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW  [web].[V_LastTenYears]
AS
SELECT
YEAR(getDate()) AS Anno
UNION ALL
SELECT
YEAR(getDate()) - 1 AS Anno
UNION ALL
SELECT
YEAR(getDate()) - 2 AS Anno
UNION ALL
SELECT
YEAR(getDate()) - 3 AS Anno
UNION ALL
SELECT
YEAR(getDate()) - 4 AS Anno
UNION ALL
SELECT
YEAR(getDate()) - 5 AS Anno
UNION ALL
SELECT
YEAR(getDate()) - 6 AS Anno
UNION ALL
SELECT
YEAR(getDate()) - 7 AS Anno
UNION ALL
SELECT
YEAR(getDate()) - 8 AS Anno
UNION ALL
SELECT
YEAR(getDate()) - 9 AS Anno







GO
