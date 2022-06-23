USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[Layouts]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[Layouts](
	[Id] [varchar](200) NOT NULL,
	[Icon] [varchar](50) NULL,
	[Title] [varchar](200) NULL,
	[ShortTitle] [varchar](200) NULL,
	[SubTitle] [varchar](200) NULL,
	[StartGradientColor] [varchar](50) NULL,
	[InheritsColors] [bit] NULL,
	[FontColor] [varchar](50) NULL,
	[EndGradientColor] [varchar](50) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_Layouts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[Layouts] ADD  CONSTRAINT [DF_Layouts_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[Layouts]  WITH CHECK ADD  CONSTRAINT [FK_Layouts_Components1] FOREIGN KEY([Id])
REFERENCES [web].[Components] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[Layouts] CHECK CONSTRAINT [FK_Layouts_Components1]
GO
