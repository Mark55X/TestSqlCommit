USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[ActionGroupConfigs]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[ActionGroupConfigs](
	[ActionGroupId] [varchar](50) NOT NULL,
	[Perspective] [varchar](50) NOT NULL,
	[DeviceType] [varchar](50) NOT NULL,
	[ConfigType] [varchar](50) NOT NULL,
	[JsonConfig] [varchar](max) NULL,
	[OldJsonConfig] [varchar](max) NULL,
	[LastUpdate] [datetime] NULL,
 CONSTRAINT [PK_ActionGroupConfigs] PRIMARY KEY CLUSTERED 
(
	[ActionGroupId] ASC,
	[Perspective] ASC,
	[DeviceType] ASC,
	[ConfigType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
