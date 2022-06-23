USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[LogActivities]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[LogActivities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ImpersonatedUserId] [int] NULL,
	[ActivityId] [varchar](50) NULL,
	[ActivityDate] [datetime] NULL,
	[LogSessionGuid] [varchar](50) NULL,
	[Params] [varchar](max) NULL,
	[ComponentId] [varchar](200) NULL,
	[Mode] [varchar](50) NULL,
 CONSTRAINT [PK_Activities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_Id_UserId_ImpersonatedUserId_ActivityId_ActivityDate]    Script Date: 23/06/2022 11:15:27 ******/
CREATE NONCLUSTERED INDEX [IDX_Id_UserId_ImpersonatedUserId_ActivityId_ActivityDate] ON [web].[LogActivities]
(
	[Id] ASC,
	[UserId] ASC,
	[ImpersonatedUserId] ASC,
	[ActivityId] ASC,
	[ActivityDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ActivityId_LogActivities]    Script Date: 23/06/2022 11:15:27 ******/
CREATE NONCLUSTERED INDEX [IX_ActivityId_LogActivities] ON [web].[LogActivities]
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
