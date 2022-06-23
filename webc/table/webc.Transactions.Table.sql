USE [RFID2022_OLD]
GO
/****** Object:  Table [webc].[Transactions]    Script Date: 23/06/2022 10:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [webc].[Transactions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Guid] [varchar](50) NULL,
	[GateId] [int] NULL,
	[ReaderDate] [datetime] NULL,
	[Direction] [varchar](50) NULL,
	[Tic] [datetime] NULL,
	[Tac] [datetime] NULL,
	[ProcessingMillisec] [int] NULL,
	[QueueLenght] [int] NULL,
	[OriginalMessage] [varchar](max) NULL,
	[Reason] [varchar](100) NULL,
	[DigitalInputs] [varchar](max) NULL,
	[IsFileSystemBackup] [bit] NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_Guid_UNIQUE]    Script Date: 23/06/2022 10:55:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_Guid_UNIQUE] ON [webc].[Transactions]
(
	[Guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [webc].[Transactions] ADD  CONSTRAINT [DF_Transactions_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
