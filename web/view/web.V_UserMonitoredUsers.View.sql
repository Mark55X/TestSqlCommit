USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE View [web].[V_UserMonitoredUsers] as
--SERVE PER RELAZ
SELECT 
		[Id]
	   ,[Email]
	   ,[UserName]
	   ,[FirstName]
	   ,[ShortName]
	   ,[LastName]
	   ,[Password]
	   ,[Telephone]
	   ,[Mobile]
	   ,[IsEnable]
	   ,[IsAdmin]
	   ,[HasCompleteDataVisibility]
	   ,[LanguageId]
	   ,[SessionTimeout]
	   ,[PersonalFolder]
	   ,[WorkingAddress]
	   ,[PasswordExpireTimeId]
	   ,[AppGroupId]
	   ,[IsAppAdmin]
	   ,[IsSystemUser]
	   ,[RedirectMasterMenuId]
	   ,[RedirectMobileMenuId]
	   ,[MenuOnSidebar]
	   ,[SidebarClosed]
	   ,[GeoAreaId]
	   ,[DefaultDashboard]
	   ,[languageDescription]
FROM
	[web].V_Users v




GO
