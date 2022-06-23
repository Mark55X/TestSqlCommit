USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE VIEW [web].[V_LogSessions] as 
SELECT [Guid]
      ,[UserId]
	  ,[UserName]
      ,[AccessDateTime]
      ,[Browser]
      ,[BrowserVersion]
      ,[Device]
      ,[DeviceType]
      ,[Orientation]
      ,[Os]
      ,[OsVersion]
      ,[UserAgent]
      ,[Ip]
      ,[Type]
      ,[ContinentCode]
      ,[ContinentName]
      ,[CountryCode]
      ,[CountryName]
      ,[RegionCode]
      ,[RegionName]
      ,[City]
      ,[Zip]
      ,[Latitude]
      ,[Longitude]
  FROM [web].[LogSessions]
  JOIN [web].[Users] ON Id = UserId










GO
