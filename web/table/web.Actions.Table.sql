USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[Actions](
	[Id] [varchar](200) NOT NULL,
	[Icon] [varchar](50) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](500) NULL,
	[CreateRequired] [bit] NULL,
	[ReadRequired] [bit] NULL,
	[UpdateRequired] [bit] NULL,
	[DeleteRequired] [bit] NULL,
	[ActionType] [varchar](50) NULL,
	[AdminScope] [varchar](50) NULL,
	[DataType] [varchar](50) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_Actions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[Actions] ADD  CONSTRAINT [DF_Actions_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
