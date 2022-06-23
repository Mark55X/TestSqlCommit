USE [RFID2022_OLD]
GO
/****** Object:  Table [webc].[TransactionsNotifications]    Script Date: 23/06/2022 11:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [webc].[TransactionsNotifications](
	[TransactionId] [bigint] NOT NULL,
	[NotificationId] [int] NOT NULL,
	[Request] [varchar](max) NULL,
	[ResponseContent] [varchar](max) NULL,
	[StatusCode] [varchar](50) NULL,
	[NotificationDate] [datetime] NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_TransactionsNotifications] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC,
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [webc].[TransactionsNotifications] ADD  CONSTRAINT [DF_TransactionsNotifications_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [webc].[TransactionsNotifications]  WITH CHECK ADD  CONSTRAINT [FK_TransactionsNotifications_NotificationsEndPoints] FOREIGN KEY([NotificationId])
REFERENCES [webc].[NotificationsEndPoints] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [webc].[TransactionsNotifications] CHECK CONSTRAINT [FK_TransactionsNotifications_NotificationsEndPoints]
GO
ALTER TABLE [webc].[TransactionsNotifications]  WITH CHECK ADD  CONSTRAINT [FK_TransactionsNotifications_Transactions] FOREIGN KEY([TransactionId])
REFERENCES [webc].[Transactions] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [webc].[TransactionsNotifications] CHECK CONSTRAINT [FK_TransactionsNotifications_Transactions]
GO
