USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[RealTimeNotificationRules]    Script Date: 23/06/2022 10:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[RealTimeNotificationRules](
	[SenderId] [varchar](200) NOT NULL,
	[MessageTypeId] [varchar](50) NOT NULL,
	[RecepientId] [varchar](200) NOT NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_RealTimeNotificationRules] PRIMARY KEY CLUSTERED 
(
	[SenderId] ASC,
	[MessageTypeId] ASC,
	[RecepientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[RealTimeNotificationRules] ADD  CONSTRAINT [DF_RealTimeNotificationRules_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
