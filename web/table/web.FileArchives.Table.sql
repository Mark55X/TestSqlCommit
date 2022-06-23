USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[FileArchives](
	[Id] [varchar](200) NOT NULL,
	[Description] [varchar](max) NULL,
	[UploadAllowed] [bit] NULL,
	[RenameAllowed] [bit] NULL,
	[DeleteAllowed] [bit] NULL,
	[RelatedToUser] [bit] NULL,
	[Params] [varchar](max) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_FileArchives] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [web].[FileArchives] ADD  CONSTRAINT [DF_FileArchives_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
