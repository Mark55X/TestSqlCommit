USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[ActionComponents](
	[ActionId] [varchar](200) NOT NULL,
	[ComponentId] [varchar](200) NOT NULL,
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
 CONSTRAINT [PK_ActionComponents] PRIMARY KEY CLUSTERED 
(
	[ActionId] ASC,
	[ComponentId] ASC,
	[ModeBeforeFire] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [web].[ActionComponents] ADD  CONSTRAINT [DF_ActionComponents_IsStatic]  DEFAULT ((0)) FOR [IsStatic]
GO
ALTER TABLE [web].[ActionComponents] ADD  CONSTRAINT [DF_ActionComponents_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[ActionComponents]  WITH CHECK ADD  CONSTRAINT [FK_ActionComponents_Actions] FOREIGN KEY([ActionId])
REFERENCES [web].[Actions] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[ActionComponents] CHECK CONSTRAINT [FK_ActionComponents_Actions]
GO
ALTER TABLE [web].[ActionComponents]  WITH CHECK ADD  CONSTRAINT [FK_ActionComponents_Components] FOREIGN KEY([ComponentId])
REFERENCES [web].[Components] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[ActionComponents] CHECK CONSTRAINT [FK_ActionComponents_Components]
GO
