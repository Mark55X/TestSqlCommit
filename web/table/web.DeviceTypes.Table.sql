USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[DeviceTypes]    Script Date: 23/06/2022 10:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[DeviceTypes](
	[Id] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_DeviceTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[DeviceTypes] ADD  CONSTRAINT [DF_DeviceTypes_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
