USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[DashboardWidgetsInstalled](
	[WidgetId] [varchar](200) NOT NULL,
	[DashboardId] [varchar](200) NOT NULL,
	[Cols] [int] NULL,
	[Rows] [int] NULL,
	[X] [int] NULL,
	[Y] [int] NULL,
	[UserId] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_DashboardWidgetsInstalled] PRIMARY KEY CLUSTERED 
(
	[WidgetId] ASC,
	[DashboardId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[DashboardWidgetsInstalled] ADD  CONSTRAINT [DF_DashboardWidgetsInstalled_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[DashboardWidgetsInstalled]  WITH CHECK ADD  CONSTRAINT [FK_DashboardWidgetsInstalled_DashboardWidgets] FOREIGN KEY([WidgetId], [DashboardId])
REFERENCES [web].[DashboardWidgets] ([WidgetId], [DashboardId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[DashboardWidgetsInstalled] CHECK CONSTRAINT [FK_DashboardWidgetsInstalled_DashboardWidgets]
GO
