USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [webc].[NotificationsEndPoints](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Enable] [bit] NULL,
	[HttpVerb] [varchar](50) NULL,
	[Endpoint] [varchar](max) NULL,
	[Notes] [varchar](max) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_NotifyEndpoints] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [webc].[NotificationsEndPoints] ADD  CONSTRAINT [DF_NotificationsEndPoints_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
