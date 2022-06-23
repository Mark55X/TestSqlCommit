USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[Translations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [varchar](6) NULL,
	[ItalianText] [varchar](512) NULL,
	[TranslatedText] [varchar](512) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
	[InsertDate] [date] NULL,
 CONSTRAINT [PK_Translations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[Translations] ADD  CONSTRAINT [DF_Translations_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
