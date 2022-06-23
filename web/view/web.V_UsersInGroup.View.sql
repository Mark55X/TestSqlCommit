USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_UsersInGroup]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [web].[V_UsersInGroup] as 
SELECT [Id]
	  ,ug.GroupId
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
	  
  FROM [web].[Users] u
  INNER JOIN [web].[UserGroups] ug on ug.UserId  = u.id









GO
