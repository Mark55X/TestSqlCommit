USE [RFID2022_OLD]
GO
/****** Object:  Table [webc].[ExternalRepositoryUpdateServiceCustomParams]    Script Date: 23/06/2022 10:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [webc].[ExternalRepositoryUpdateServiceCustomParams](
	[Id] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_ExternalRepositoryUpdateServiceCustomParams] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [webc].[ExternalRepositoryUpdateServiceCustomParams] ADD  CONSTRAINT [DF_ExternalRepositoryUpdateServiceCustomParams_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
