﻿USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[ComponentTypes]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[ComponentTypes](
	[Id] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[IsMenuType] [bit] NULL,
	[OrderIndex] [int] NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_ComponentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[ComponentTypes] ADD  CONSTRAINT [DF_ComponentTypes_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
