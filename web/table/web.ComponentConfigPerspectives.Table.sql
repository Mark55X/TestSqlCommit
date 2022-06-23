USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[ComponentConfigPerspectives](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ComponentId] [varchar](200) NOT NULL,
	[ConfigType] [varchar](50) NOT NULL,
	[UserId] [int] NULL,
	[DefaultMode] [varchar](1) NULL,
	[Description] [varchar](100) NULL,
	[JsonConfig] [varchar](max) NULL,
	[OldJsonConfig] [varchar](max) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_ComponentConfigPerspectives] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [web].[ComponentConfigPerspectives]  WITH CHECK ADD  CONSTRAINT [FK_ComponentConfigPerspectives_Components] FOREIGN KEY([ComponentId])
REFERENCES [web].[Components] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[ComponentConfigPerspectives] CHECK CONSTRAINT [FK_ComponentConfigPerspectives_Components]
GO
