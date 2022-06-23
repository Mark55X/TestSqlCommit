USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[ScheduledTasks](
	[Id] [varchar](50) NOT NULL,
	[Description] [varchar](512) NULL,
	[IntervalMinutes] [int] NULL,
	[Enable] [bit] NULL,
	[LastRun] [datetime] NULL,
	[LastRunResult] [varchar](512) NULL,
	[NextRun] [datetime] NULL,
 CONSTRAINT [PK_ScheduledTasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
