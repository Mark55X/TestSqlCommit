USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[Menu]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[Menu](
	[Id] [varchar](200) NOT NULL,
	[ParentId] [varchar](200) NULL,
	[OrderIndex] [int] NULL,
	[Sidebar] [bit] NULL,
	[Params] [varchar](max) NULL,
	[FileArchiveId] [varchar](200) NULL,
	[DeviceTypeId] [varchar](50) NULL,
	[FilterPanelId] [varchar](200) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
	[PopupSize] [varchar](2) NULL,
 CONSTRAINT [PK_Menu_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [web].[Menu] ADD  CONSTRAINT [DF_Menu_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Components1] FOREIGN KEY([Id])
REFERENCES [web].[Components] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[Menu] CHECK CONSTRAINT [FK_Menu_Components1]
GO
ALTER TABLE [web].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_PopupSizes] FOREIGN KEY([PopupSize])
REFERENCES [web].[PopupSizes] ([Id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [web].[Menu] CHECK CONSTRAINT [FK_Menu_PopupSizes]
GO
