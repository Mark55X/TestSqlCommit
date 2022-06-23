USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[DashboardWidgetsDefault]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[DashboardWidgetsDefault](
	[WidgetId] [varchar](200) NOT NULL,
	[DashboardId] [varchar](200) NOT NULL,
	[Cols] [int] NULL,
	[Rows] [int] NULL,
	[X] [int] NULL,
	[Y] [int] NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_DashboardWidgetsDefault] PRIMARY KEY CLUSTERED 
(
	[WidgetId] ASC,
	[DashboardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[DashboardWidgetsDefault] ADD  CONSTRAINT [DF_DashboardWidgetsDefault_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[DashboardWidgetsDefault]  WITH CHECK ADD  CONSTRAINT [FK_DashboardWidgetsDefault_DashboardWidgets] FOREIGN KEY([WidgetId], [DashboardId])
REFERENCES [web].[DashboardWidgets] ([WidgetId], [DashboardId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[DashboardWidgetsDefault] CHECK CONSTRAINT [FK_DashboardWidgetsDefault_DashboardWidgets]
GO
