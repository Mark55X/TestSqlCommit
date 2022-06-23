USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




Create view [web].[V_Cruds] as

Select 'all' as Id, 'Tutti' as [Description]
union all
Select 'create' as Id, 'Creazione' as [Description]
union all
Select 'read' as Id, 'Lettura' as [Description]
union all
Select 'update' as Id, 'Modifica' as [Description]
union all
Select 'delete' as Id, 'Cancellazione' as [Description]







GO
