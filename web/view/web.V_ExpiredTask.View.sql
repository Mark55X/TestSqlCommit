USE [RFID2022_OLD]
GO
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
