USE [RFID2022_OLD]
GO
/****** Object:  Table [webc].[TransactionsDetails]    Script Date: 23/06/2022 11:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [webc].[TransactionsDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TransactionId] [bigint] NOT NULL,
	[Epc] [varchar](300) NULL,
	[EpcToAscii] [varchar](300) NULL,
	[Rssi] [decimal](18, 2) NULL,
	[AntennaId] [int] NULL,
	[Speed] [decimal](18, 6) NULL,
	[FilterTags] [varchar](300) NULL,
	[ReadsCount] [int] NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_TransactionsDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_EpcToAscii]    Script Date: 23/06/2022 11:15:32 ******/
CREATE NONCLUSTERED INDEX [IDX_EpcToAscii] ON [webc].[TransactionsDetails]
(
	[EpcToAscii] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [webc].[TransactionsDetails] ADD  CONSTRAINT [DF_TransactionsDetails_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [webc].[TransactionsDetails]  WITH CHECK ADD  CONSTRAINT [FK_TransactionsDetails_Transactions] FOREIGN KEY([TransactionId])
REFERENCES [webc].[Transactions] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [webc].[TransactionsDetails] CHECK CONSTRAINT [FK_TransactionsDetails_Transactions]
GO
