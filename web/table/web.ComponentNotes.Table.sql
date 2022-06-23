USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[ComponentNotes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ComponentId] [varchar](200) NULL,
	[UserId] [int] NULL,
	[Title] [varchar](200) NULL,
	[Message] [varchar](500) NULL,
	[Date] [int] NULL,
	[Color] [varchar](50) NULL,
	[Visible] [varchar](1) NULL,
	[Xaxis] [int] NULL,
	[Yaxis] [int] NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_MenuNote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[ComponentNotes] ADD  CONSTRAINT [DF_ComponentNotes_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
