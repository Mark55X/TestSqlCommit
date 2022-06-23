USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[DashboardWidgets]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[DashboardWidgets](
	[WidgetId] [varchar](200) NOT NULL,
	[DashboardId] [varchar](200) NOT NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_DashboardWidgets_1] PRIMARY KEY CLUSTERED 
(
	[WidgetId] ASC,
	[DashboardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[DashboardWidgets] ADD  CONSTRAINT [DF_DashboardWidgets_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[DashboardWidgets]  WITH CHECK ADD  CONSTRAINT [FK_DashboardWidgets_Dashboards] FOREIGN KEY([DashboardId])
REFERENCES [web].[Dashboards] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[DashboardWidgets] CHECK CONSTRAINT [FK_DashboardWidgets_Dashboards]
GO
ALTER TABLE [web].[DashboardWidgets]  WITH CHECK ADD  CONSTRAINT [FK_DashboardWidgets_Widgets] FOREIGN KEY([WidgetId])
REFERENCES [web].[Widgets] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[DashboardWidgets] CHECK CONSTRAINT [FK_DashboardWidgets_Widgets]
GO
