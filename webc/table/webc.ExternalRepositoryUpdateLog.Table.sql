USE [RFID2022_OLD]
GO
/****** Object:  Table [webc].[ExternalRepositoryUpdateLog]    Script Date: 23/06/2022 10:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [webc].[ExternalRepositoryUpdateLog](
	[TransactionId] [int] NOT NULL,
	[Status] [varchar](50) NULL,
	[ProcessingDate] [datetime] NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_ExternalRepositoryUpdate] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [webc].[ExternalRepositoryUpdateLog] ADD  CONSTRAINT [DF_ExternalRepositoryUpdateLog_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
