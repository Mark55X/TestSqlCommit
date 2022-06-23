USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[Components](
	[Id] [varchar](200) NOT NULL,
	[TypeId] [varchar](50) NULL,
	[ActionGroupId] [varchar](50) NULL,
	[TableName] [varchar](200) NULL,
	[TableSchema] [varchar](200) NULL,
	[ViewName] [varchar](200) NULL,
	[ViewSchema] [varchar](200) NULL,
	[DataType] [varchar](50) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_Components] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[Components] ADD  CONSTRAINT [DF_Components_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[Components]  WITH CHECK ADD  CONSTRAINT [FK_Components_ActionGroups] FOREIGN KEY([ActionGroupId])
REFERENCES [web].[ActionGroups] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [web].[Components] CHECK CONSTRAINT [FK_Components_ActionGroups]
GO
ALTER TABLE [web].[Components]  WITH CHECK ADD  CONSTRAINT [FK_Components_ComponentTypes] FOREIGN KEY([TypeId])
REFERENCES [web].[ComponentTypes] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[Components] CHECK CONSTRAINT [FK_Components_ComponentTypes]
GO
