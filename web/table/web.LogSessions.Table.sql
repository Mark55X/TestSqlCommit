USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[LogSessions]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[LogSessions](
	[Guid] [varchar](50) NOT NULL,
	[UserId] [int] NULL,
	[ImpersonatedUserId] [int] NULL,
	[AccessDateTime] [datetime] NULL,
	[Browser] [varchar](50) NULL,
	[BrowserVersion] [varchar](50) NULL,
	[Device] [varchar](50) NULL,
	[DeviceType] [varchar](50) NULL,
	[Orientation] [varchar](50) NULL,
	[Os] [varchar](50) NULL,
	[OsVersion] [varchar](50) NULL,
	[UserAgent] [varchar](300) NULL,
	[Ip] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[ContinentCode] [varchar](50) NULL,
	[ContinentName] [varchar](50) NULL,
	[CountryCode] [varchar](50) NULL,
	[CountryName] [varchar](50) NULL,
	[RegionCode] [varchar](50) NULL,
	[RegionName] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Zip] [varchar](10) NULL,
	[Latitude] [decimal](18, 12) NULL,
	[Longitude] [decimal](18, 12) NULL,
 CONSTRAINT [PK_LogSessions] PRIMARY KEY CLUSTERED 
(
	[Guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
