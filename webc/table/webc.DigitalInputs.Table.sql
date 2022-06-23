USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [webc].[DigitalInputs](
	[Sequence] [varchar](50) NOT NULL,
	[GateId] [int] NOT NULL,
	[Value] [varchar](50) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_DigitalInputs] PRIMARY KEY CLUSTERED 
(
	[Sequence] ASC,
	[GateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [webc].[DigitalInputs] ADD  CONSTRAINT [DF_DigitalInputs_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
