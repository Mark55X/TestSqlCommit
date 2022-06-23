USE [RFID2022_OLD]
GO
/****** Object:  Table [webc].[GatesNotificationsEndPoints]    Script Date: 23/06/2022 10:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [webc].[GatesNotificationsEndPoints](
	[GateId] [int] NOT NULL,
	[NotificationEndPointId] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_NotificationsPerReader] PRIMARY KEY CLUSTERED 
(
	[GateId] ASC,
	[NotificationEndPointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [webc].[GatesNotificationsEndPoints] ADD  CONSTRAINT [DF_GatesNotificationsEndPoints_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [webc].[GatesNotificationsEndPoints]  WITH CHECK ADD  CONSTRAINT [FK_NotificationsPerReader_NotificationsEndPoints] FOREIGN KEY([NotificationEndPointId])
REFERENCES [webc].[NotificationsEndPoints] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [webc].[GatesNotificationsEndPoints] CHECK CONSTRAINT [FK_NotificationsPerReader_NotificationsEndPoints]
GO
