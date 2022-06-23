USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[ComponentConfigs]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[ComponentConfigs](
	[ComponentId] [varchar](200) NOT NULL,
	[ConfigType] [varchar](50) NOT NULL,
	[JsonConfig] [varchar](max) NULL,
	[OldJsonConfig] [varchar](max) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_ComponentConfigs_1] PRIMARY KEY CLUSTERED 
(
	[ComponentId] ASC,
	[ConfigType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [web].[ComponentConfigs] ADD  CONSTRAINT [DF_ComponentConfigs_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[ComponentConfigs]  WITH CHECK ADD  CONSTRAINT [FK_ComponentConfigs_Components] FOREIGN KEY([ComponentId])
REFERENCES [web].[Components] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[ComponentConfigs] CHECK CONSTRAINT [FK_ComponentConfigs_Components]
GO
