USE [RFID2022_OLD]
GO
/****** Object:  Table [webc].[Vendors]    Script Date: 23/06/2022 11:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [webc].[Vendors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [webc].[Vendors] ADD  CONSTRAINT [DF_Vendors_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
