USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[Dashboards]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[Dashboards](
	[Id] [varchar](200) NOT NULL,
	[Description] [varchar](max) NULL,
	[DefaultJsonConfig] [varchar](max) NULL,
	[IsAdmin] [bit] NULL,
	[IsDefault] [bit] NULL,
	[IsGlobal] [bit] NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_Dashboards] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [web].[Dashboards] ADD  CONSTRAINT [DF_Dashboards_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [web].[Dashboards] ADD  CONSTRAINT [DF_Dashboards_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[Dashboards]  WITH CHECK ADD  CONSTRAINT [FK_Dashboards_Components] FOREIGN KEY([Id])
REFERENCES [web].[Components] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[Dashboards] CHECK CONSTRAINT [FK_Dashboards_Components]
GO
