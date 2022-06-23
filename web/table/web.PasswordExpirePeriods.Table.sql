USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[PasswordExpirePeriods]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[PasswordExpirePeriods](
	[Id] [int] NOT NULL,
	[Description] [varchar](50) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_PasswordExpirePeriods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[PasswordExpirePeriods] ADD  CONSTRAINT [DF_PasswordExpirePeriods_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
