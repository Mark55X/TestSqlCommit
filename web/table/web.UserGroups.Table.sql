USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[UserGroups](
	[UserId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[UserGroups] ADD  CONSTRAINT [DF_UserGroups_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[UserGroups]  WITH CHECK ADD  CONSTRAINT [FK_UserGroups_Groups] FOREIGN KEY([GroupId])
REFERENCES [web].[Groups] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[UserGroups] CHECK CONSTRAINT [FK_UserGroups_Groups]
GO
