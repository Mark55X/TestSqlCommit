USE [RFID2022_OLD]
GO
/****** Object:  Table [webc].[Gates]    Script Date: 23/06/2022 10:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [webc].[Gates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReaderIp] [varchar](50) NOT NULL,
	[PlcIp] [varchar](50) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [varchar](300) NULL,
	[ShortName] [varchar](50) NULL,
	[OrderIndex] [int] NULL,
	[AntennasCount] [int] NULL,
	[PhotocellsCount] [int] NULL,
	[Fan] [bit] NULL,
	[Enable] [bit] NULL,
	[PlcPort] [int] NULL,
	[PlcRack] [int] NULL,
	[PlcSlot] [int] NULL,
	[PlcMemory] [varchar](50) NULL,
	[ReaderVendorId] [varchar](50) NULL,
	[WorkingMode] [varchar](50) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_Gates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_PlcIp_UNIQUE]    Script Date: 23/06/2022 10:55:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_PlcIp_UNIQUE] ON [webc].[Gates]
(
	[PlcIp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_ReaderIp_PlcIp_UNIQUE]    Script Date: 23/06/2022 10:55:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_ReaderIp_PlcIp_UNIQUE] ON [webc].[Gates]
(
	[ReaderIp] ASC,
	[PlcIp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_ReaderIp_UNIQUE]    Script Date: 23/06/2022 10:55:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_ReaderIp_UNIQUE] ON [webc].[Gates]
(
	[ReaderIp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [webc].[Gates] ADD  CONSTRAINT [DF_Gates_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
