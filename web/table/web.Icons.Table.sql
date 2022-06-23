﻿USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[Icons]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[Icons](
	[Id] [varchar](50) NOT NULL,
	[MaterialId] [varchar](50) NULL,
	[Description] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Icons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
