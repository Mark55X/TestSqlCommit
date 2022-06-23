USE [RFID2022_OLD]
GO
/****** Object:  Table [webc].[BorderTable]    Script Date: 23/06/2022 11:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [webc].[BorderTable](
	[Id] [int] NULL,
	[TransactionId] [int] NULL,
	[InsertDate] [datetime] NULL,
	[ReaderIp] [varchar](50) NULL,
	[Direction] [varchar](50) NULL,
	[Epc] [varchar](300) NULL,
	[EpcToAscii] [varchar](300) NULL,
	[FilterTags] [varchar](300) NULL,
	[Semaphore] [int] NULL
) ON [PRIMARY]
GO
