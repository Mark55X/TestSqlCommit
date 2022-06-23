USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [web].[V_Components]
AS
SELECT        Id, Id as [Description], TypeId, ActionGroupId, TableName, TableSchema, ViewName, ViewSchema
FROM            web.Components










GO
