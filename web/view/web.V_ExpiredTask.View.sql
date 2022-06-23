USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_ExpiredTask]    Script Date: 23/06/2022 10:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE view [web].[V_ExpiredTask]
AS
SELECT [Id]
      ,[Description]
      ,[IntervalMinutes]
      ,[Enable]
      ,[LastRun]
      ,[LastRunResult]
      ,[NextRun]
FROM 
	[web].[ScheduledTasks] sc
WHERE [Enable] = 1 AND (sc.NextRun is null OR sc.NextRun < GetDate())










GO
