USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[SpInformations]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[SpInformations](
	[TableSchema] [varchar](200) NOT NULL,
	[TableName] [varchar](200) NOT NULL,
	[ColumnName] [varchar](200) NOT NULL,
	[IsNullable] [bit] NULL,
	[DataType] [nvarchar](100) NULL,
	[CharMaxLenght] [int] NULL,
	[NumericPrecision] [tinyint] NULL,
	[NumericScale] [tinyint] NULL,
	[IsIdentity] [bit] NULL,
	[IsPk] [bit] NULL,
 CONSTRAINT [PK_SpInformations] PRIMARY KEY CLUSTERED 
(
	[TableSchema] ASC,
	[TableName] ASC,
	[ColumnName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
