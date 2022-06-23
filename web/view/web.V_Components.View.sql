USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_Components]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [web].[V_Components]
AS
SELECT        Id, Id as [Description], TypeId, ActionGroupId, TableName, TableSchema, ViewName, ViewSchema
FROM            web.Components










GO
