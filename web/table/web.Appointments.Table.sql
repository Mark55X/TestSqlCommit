USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[Appointments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Title] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[DateStart] [datetime] NULL,
	[DateEnd] [datetime] NULL,
	[AllDay] [bit] NULL,
	[RecurrenceRule] [varchar](200) NULL,
	[Type] [varchar](200) NOT NULL,
	[IsPrivate] [bit] NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
	[DurationMinutes] [int] NULL,
	[CompactEnabled] [bit] NULL,
 CONSTRAINT [PK_Appointments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [web].[Appointments] ADD  CONSTRAINT [DF_Appointments_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_AppointmentTypes] FOREIGN KEY([Type])
REFERENCES [web].[AppointmentTypes] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[Appointments] CHECK CONSTRAINT [FK_Appointments_AppointmentTypes]
GO
