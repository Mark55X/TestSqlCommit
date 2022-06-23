USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_TablesInformations]    Script Date: 23/06/2022 10:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [web].[V_TablesInformations] as 
WITH PkCte 
AS  
-- Define the CTE query.  
(  
   Select TABLE_SCHEMA, TABLE_NAME,COLUMN_NAME  from INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS colUsage where colUsage.CONSTRAINT_NAME LIKE 'PK%'
)  

SELECT DISTINCT
	tbl.TABLE_SCHEMA as TableSchema
	, LOWER(tbl.TABLE_NAME) as TableName 
	, col.COLUMN_NAME as ColumnName
	, sc.IS_NULLABLE as IsNullable
	, DATA_TYPE as DataType
	, CHARACTER_MAXIMUM_LENGTH as CharMaxLenght
	, cast(NUMERIC_PRECISION as int) as NumericPrecision
	, cast(NUMERIC_SCALE as int) as NumericScale
	, sc.is_identity as IsIdentity
	, case when (cte.COLUMN_NAME is null)	then 0 else 1 end AS IsPk
FROM INFORMATION_SCHEMA.TABLES AS tbl
INNER JOIN INFORMATION_SCHEMA.COLUMNS AS col ON col.TABLE_NAME = tbl.TABLE_NAME AND col.TABLE_SCHEMA = tbl.TABLE_SCHEMA
INNER JOIN sys.columns AS sc ON sc.object_id = object_id(tbl.table_schema + '.' + tbl.table_name)
    AND sc.NAME = col.COLUMN_NAME
LEFT JOIN PkCte cte on cte.COLUMN_NAME = col.COLUMN_NAME AND  cte.TABLE_NAME = tbl.TABLE_NAME AND cte.TABLE_SCHEMA = tbl.TABLE_SCHEMA
LEFT JOIN sys.extended_properties prop ON prop.major_id = sc.object_id
    AND prop.minor_id = sc.column_id
    AND prop.NAME = 'MS_Description'
	WHERE DATA_TYPE != 'timestamp'
	UNION ALL
	
SELECT [TableSchema]
      ,[TableName]
      ,[ColumnName]
      ,[IsNullable]
      ,[DataType]
      ,[CharMaxLenght]
      ,[NumericPrecision]
      ,[NumericScale]
      ,[IsIdentity]
      ,[IsPk]
  FROM [web].[SpInformations]








GO
