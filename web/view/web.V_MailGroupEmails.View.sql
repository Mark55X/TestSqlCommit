USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE VIEW [web].[V_MailGroupEmails] as 
SELECT em.MailGroupId
	   ,em.Email
  FROM [web].MailGroupEmails em

  UNION ALL
  SELECT 'users-'+ CONVERT (varchar,Id) MailGroupId
		 ,u.Email Email

  FROM web.Users u










GO
