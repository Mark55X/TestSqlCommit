USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[CalendarViewModes]    Script Date: 23/06/2022 10:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[CalendarViewModes](
	[Id] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL
) ON [PRIMARY]
GO
