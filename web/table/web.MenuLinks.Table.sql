USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[MenuLinks](
	[MenuId] [varchar](200) NOT NULL,
	[MenuLinkId] [varchar](200) NOT NULL,
	[LinkType] [varchar](50) NOT NULL,
	[Pattern] [varchar](max) NULL,
	[StaticValue] [varchar](max) NULL,
	[OrderIndex] [int] NULL,
	[CountDot] [bit] NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_MenuLinks] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC,
	[MenuLinkId] ASC,
	[LinkType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [web].[MenuLinks] ADD  CONSTRAINT [DF_MenuLinks_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
