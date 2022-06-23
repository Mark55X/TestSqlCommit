USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_UserLogSessions]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE VIEW [web].[V_UserLogSessions] as 
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
