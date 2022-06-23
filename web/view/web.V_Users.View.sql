USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [web].[V_Users]
AS
SELECT
	   u.[Id]
	  ,u.[Id] as IconId
      ,u.[Email]
      ,u.[UserName]
      ,u.[FirstName]
      ,u.[ShortName]
      ,u.[LastName]
      ,u.[Password]
      ,u.[Telephone]
      ,u.[Mobile]
      ,u.[IsEnable]
      ,u.[IsAdmin]
      ,u.[HasCompleteDataVisibility]
      ,u.[LanguageId]
      ,u.[SessionTimeout]
      ,u.[PersonalFolder]
      ,u.[WorkingAddress]
      ,u.[PasswordExpireTimeId]
      ,u.[AppGroupId]
      ,u.[IsAppAdmin]
      ,u.[IsSystemUser]
      ,u.[RedirectMasterMenuId]
      ,u.[RedirectMobileMenuId]
      ,u.[MenuOnSidebar]
      ,u.[SidebarClosed]
      ,u.[GeoAreaId]
      ,u.[DefaultDashboard]
	  ,u.[Color]
	  ,l.Description AS languageDescription
FROM
	[web].Users u
	LEFT JOIN web.Languages l ON l.Id = u.LanguageId










GO
