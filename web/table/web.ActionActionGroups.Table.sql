USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[ActionActionGroups]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[ActionActionGroups](
	[ActionId] [varchar](200) NOT NULL,
	[ActionGroupId] [varchar](50) NOT NULL,
	[ModeBeforeFire] [varchar](50) NOT NULL,
	[ModeAfterFire] [varchar](50) NULL,
	[OrderIndex] [int] NULL,
	[IsStatic] [bit] NULL,
	[Position] [varchar](50) NULL,
	[Parameters] [varchar](max) NULL,
	[DialogEnabled] [bit] NULL,
	[DialogMessage] [varchar](200) NULL,
	[DialogParameters] [varchar](max) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_ActionsGroups] PRIMARY KEY CLUSTERED 
(
	[ActionId] ASC,
	[ActionGroupId] ASC,
	[ModeBeforeFire] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [web].[ActionActionGroups] ADD  CONSTRAINT [DF_ActionActionGroups_IsStatic]  DEFAULT ((0)) FOR [IsStatic]
GO
ALTER TABLE [web].[ActionActionGroups] ADD  CONSTRAINT [DF_ActionActionGroups_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[ActionActionGroups]  WITH CHECK ADD  CONSTRAINT [FK_ActionActionGroups_ActionGroups] FOREIGN KEY([ActionGroupId])
REFERENCES [web].[ActionGroups] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[ActionActionGroups] CHECK CONSTRAINT [FK_ActionActionGroups_ActionGroups]
GO
ALTER TABLE [web].[ActionActionGroups]  WITH CHECK ADD  CONSTRAINT [FK_ActionGroups_Actions] FOREIGN KEY([ActionId])
REFERENCES [web].[Actions] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[ActionActionGroups] CHECK CONSTRAINT [FK_ActionGroups_Actions]
GO
