USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[UserMonitoredUsers]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[UserMonitoredUsers](
	[UserId] [int] NOT NULL,
	[MonitoredUserId] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_UserMonitoredUsers] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[MonitoredUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[UserMonitoredUsers] ADD  CONSTRAINT [DF_UserMonitoredUsers_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
