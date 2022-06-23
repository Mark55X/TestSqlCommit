USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[ComponentHelps]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[ComponentHelps](
	[ComponentId] [varchar](200) NOT NULL,
	[Help] [varchar](max) NULL,
	[LanguageId] [varchar](6) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
	[LastUpdateDate] [int] NULL,
 CONSTRAINT [PK_MenuHelps] PRIMARY KEY CLUSTERED 
(
	[ComponentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [web].[ComponentHelps] ADD  CONSTRAINT [DF_ComponentHelps_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
