USE [RFID2022_OLD]
GO
/****** Object:  Table [webc].[GatesGeneralStatus]    Script Date: 23/06/2022 11:15:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [webc].[GatesGeneralStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GateId] [int] NULL,
	[StatusDate] [datetime] NULL,
	[LightColor] [varchar](50) NULL,
	[ReaderStatus] [bit] NULL,
	[Temperature] [float] NULL,
	[FanStatus] [bit] NULL,
	[Antenna1] [bit] NULL,
	[Antenna2] [bit] NULL,
	[Antenna3] [bit] NULL,
	[Antenna4] [bit] NULL,
	[PhotoCell1] [bit] NULL,
	[PhotoCell2] [bit] NULL,
	[PhotoCell3] [bit] NULL,
	[PhotoCell4] [bit] NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
	[PlcInError] [bit] NULL,
 CONSTRAINT [PK_webc.GeneralStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [webc].[GatesGeneralStatus] ADD  CONSTRAINT [DF_GatesGeneralStatus_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [webc].[GatesGeneralStatus]  WITH CHECK ADD  CONSTRAINT [FK_GatesGeneralStatus_Gates] FOREIGN KEY([GateId])
REFERENCES [webc].[Gates] ([Id])
GO
ALTER TABLE [webc].[GatesGeneralStatus] CHECK CONSTRAINT [FK_GatesGeneralStatus_Gates]
GO
