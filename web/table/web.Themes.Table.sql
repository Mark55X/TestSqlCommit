USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[Themes](
	[Id] [int] NOT NULL,
	[ThemeDescription] [varchar](150) NOT NULL,
	[ThemeConfiguration] [varchar](max) NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_Themes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [web].[Themes] ADD  CONSTRAINT [DF_Themes_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
