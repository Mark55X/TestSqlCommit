USE [RFID2022_OLD]
GO
/****** Object:  Table [webc].[GatesActionsOnEvent]    Script Date: 23/06/2022 10:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [webc].[GatesActionsOnEvent](
	[GateId] [int] NOT NULL,
	[EventId] [varchar](50) NOT NULL,
	[ActionId] [varchar](50) NOT NULL,
	[DurationMillisec] [int] NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_PlcsActionsOnEvent] PRIMARY KEY CLUSTERED 
(
	[GateId] ASC,
	[EventId] ASC,
	[ActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [webc].[GatesActionsOnEvent] ADD  CONSTRAINT [DF_GatesActionsOnEvent_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
