USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[ComponentPermissions]    Script Date: 23/06/2022 10:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[ComponentPermissions](
	[ComponentId] [varchar](200) NOT NULL,
	[GroupId] [int] NOT NULL,
	[CanRead] [bit] NULL,
	[CanCreate] [bit] NULL,
	[CanUpdate] [bit] NULL,
	[CanDelete] [bit] NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_ComponentPermissions] PRIMARY KEY CLUSTERED 
(
	[ComponentId] ASC,
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[ComponentPermissions] ADD  CONSTRAINT [DF_ComponentPermissions_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[ComponentPermissions]  WITH CHECK ADD  CONSTRAINT [FK_ComponentPermissions_Components] FOREIGN KEY([ComponentId])
REFERENCES [web].[Components] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[ComponentPermissions] CHECK CONSTRAINT [FK_ComponentPermissions_Components]
GO
ALTER TABLE [web].[ComponentPermissions]  WITH CHECK ADD  CONSTRAINT [FK_ComponentPermissions_Groups] FOREIGN KEY([GroupId])
REFERENCES [web].[Groups] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[ComponentPermissions] CHECK CONSTRAINT [FK_ComponentPermissions_Groups]
GO
