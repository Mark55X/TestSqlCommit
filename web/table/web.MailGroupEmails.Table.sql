USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[MailGroupEmails]    Script Date: 23/06/2022 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[MailGroupEmails](
	[MailGroupId] [varchar](20) NOT NULL,
	[Email] [varchar](320) NOT NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_MailGroupEmails] PRIMARY KEY CLUSTERED 
(
	[MailGroupId] ASC,
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[MailGroupEmails] ADD  CONSTRAINT [DF_MailGroupEmails_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [web].[MailGroupEmails]  WITH CHECK ADD  CONSTRAINT [FK_MailGroupEmails_MailGroups] FOREIGN KEY([MailGroupId])
REFERENCES [web].[MailGroups] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [web].[MailGroupEmails] CHECK CONSTRAINT [FK_MailGroupEmails_MailGroups]
GO
