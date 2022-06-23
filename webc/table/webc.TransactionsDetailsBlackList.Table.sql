USE [RFID2022_OLD]
GO
/****** Object:  Table [webc].[TransactionsDetailsBlackList]    Script Date: 23/06/2022 11:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [webc].[TransactionsDetailsBlackList](
	[Epc] [varchar](300) NOT NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_TransactionsDetailsBlackList] PRIMARY KEY CLUSTERED 
(
	[Epc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [webc].[TransactionsDetailsBlackList] ADD  CONSTRAINT [DF_TransactionsDetailsBlackList_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
