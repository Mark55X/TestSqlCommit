USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_LogActivities]    Script Date: 23/06/2022 10:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE view [web].[V_LogActivities] as 
SELECT [Id] as id
      ,[UserId] as userId
      ,case 
	    when [ActivityId]='ROUTE-BACK' then 'Navigazione Indietro'
	    when [ActivityId]='ROUTE' then 'Navigazione'
		when [ActivityId]='LOGGED_IN' then 'login'
		when [ActivityId]='LOGGED_OUT' then 'logout'
		end as activityId
      ,[ActivityDate] as activityDate
	  ,[ActivityDate] as ActivityTime
	  ,[Params] as Params
	  ,[ComponentId] as ComponentId
	  ,[Mode] as Mode
      --,[LogSessionGuid] as logSessionGuid
      --,[Params] as [params]
  FROM [web].[LogActivities]








GO
