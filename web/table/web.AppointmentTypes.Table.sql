USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[AppointmentTypes](
	[Id] [varchar](200) NOT NULL,
	[Custom] [bit] NULL,
	[Description] [varchar](200) NULL,
	[OrderIndex] [int] NULL,
	[StartGradient] [varchar](7) NULL,
	[EndGradient] [varchar](7) NULL,
	[CreationMenu] [varchar](200) NULL,
	[CreationParameters] [varchar](max) NULL,
	[UpdateMenu] [varchar](200) NULL,
	[UpdateParameters] [varchar](max) NULL,
	[Icon] [varchar](50) NULL,
	[DragEnabled] [bit] NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_AppointmentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [web].[AppointmentTypes] ADD  CONSTRAINT [DF_AppointmentTypes_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[AppointmentTypes]  WITH CHECK ADD  CONSTRAINT [FK_AppointmentTypes_Components] FOREIGN KEY([Id])
REFERENCES [web].[Components] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[AppointmentTypes] CHECK CONSTRAINT [FK_AppointmentTypes_Components]
GO
