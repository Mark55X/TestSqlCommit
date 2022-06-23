USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[Users]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](200) NOT NULL,
	[UserName] [varchar](200) NULL,
	[FirstName] [varchar](200) NULL,
	[ShortName] [varchar](200) NULL,
	[LastName] [varchar](200) NULL,
	[Password] [varchar](2000) NULL,
	[Telephone] [varchar](100) NULL,
	[Mobile] [varchar](100) NULL,
	[IsEnable] [bit] NULL,
	[IsAdmin] [bit] NULL,
	[Color] [varchar](50) NULL,
	[HasCompleteDataVisibility] [bit] NULL,
	[LanguageId] [varchar](50) NULL,
	[SessionTimeout] [int] NULL,
	[PersonalFolder] [varchar](256) NULL,
	[WorkingAddress] [varchar](max) NULL,
	[PasswordExpireTimeId] [int] NULL,
	[AppGroupId] [int] NULL,
	[IsAppAdmin] [bit] NULL,
	[IsSystemUser] [bit] NULL,
	[RedirectMasterMenuId] [varchar](200) NULL,
	[RedirectMobileMenuId] [varchar](200) NULL,
	[MenuOnSidebar] [bit] NULL,
	[SidebarClosed] [bit] NULL,
	[GeoAreaId] [varchar](15) NULL,
	[DefaultDashboard] [varchar](200) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_Email]    Script Date: 23/06/2022 11:15:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_Email] ON [web].[Users]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_UserName]    Script Date: 23/06/2022 11:15:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_UserName] ON [web].[Users]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_UserName_Email]    Script Date: 23/06/2022 11:15:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IDX_UserName_Email] ON [web].[Users]
(
	[Email] ASC,
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [web].[Users] ADD  CONSTRAINT [DF_Users_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Components] FOREIGN KEY([RedirectMasterMenuId])
REFERENCES [web].[Components] ([Id])
GO
ALTER TABLE [web].[Users] CHECK CONSTRAINT [FK_Users_Components]
GO
ALTER TABLE [web].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Components1] FOREIGN KEY([RedirectMobileMenuId])
REFERENCES [web].[Components] ([Id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [web].[Users] CHECK CONSTRAINT [FK_Users_Components1]
GO
