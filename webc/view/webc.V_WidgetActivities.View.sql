USE [RFID2022_OLD]
GO
/****** Object:  View [webc].[V_WidgetActivities]    Script Date: 23/06/2022 11:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/****** Script per comando SelectTopNRows da SSMS  ******/
CREATE VIEW [webc].[V_WidgetActivities] as 
SELECT 
		'Aperta' as status, '2018-01-01' as expiriration, 'compagnia1' as company, 'Prova inserimento attivita' as activity, '2018-01-01' as insert_date, 'Luca'as [executor] 
		UNION
		SELECT 
		'Chiusa' as status, '2018-01-01' as expiriration, 'compagnia2' as company, 'Prova inserimento attivita' as activity, '2018-01-01' as insert_date, 'Emanuele'as [executor] 
		UNION
		SELECT 
		'Completata al 10%' as status, '2018-01-01' as expiriration, 'compagnia3' as company, 'Prova inserimento attivita' as activity, '2018-01-01' as insert_date, 'Gianluca'as [executor] 
		UNION
		SELECT 
		'Aperta' as status, '2018-01-01' as expiriration, 'compagnia4' as company, 'Prova inserimento attivita' as activity, '2018-01-01' as insert_date, 'Luca'as [executor] 
		UNION
		SELECT 
		'Chiusa' as status, '2018-01-01' as expiriration, 'compagnia5' as company, 'Prova inserimento attivita' as activity, '2018-01-01' as insert_date, 'Emanuele'as [executor] 
		UNION
		SELECT 
		'Completata al 10%' as status, '2018-01-01' as expiriration, 'compagnia6' as company, 'Prova inserimento attivita' as activity, '2018-01-01' as insert_date, 'Gianluca'as [executor] 
		UNION
		SELECT 
		'Aperta' as status, '2018-01-01' as expiriration, 'compagnia7' as company, 'Prova inserimento attivita' as activity, '2018-01-01' as insert_date, 'Luca'as [executor] 
		UNION
		SELECT 
		'Chiusa' as status, '2018-01-01' as expiriration, 'compagnia8' as company, 'Prova inserimento attivita' as activity, '2018-01-01' as insert_date, 'Emanuele'as [executor] 
		UNION
		SELECT 
		'Completata al 10%' as status, '2018-01-01' as expiriration, 'compagnia9' as company, 'Prova inserimento attivita' as activity, '2018-01-01' as insert_date, 'Gianluca'as [executor] 
		UNION
		SELECT 
		'Aperta' as status, '2018-01-01' as expiriration, 'compagnia10' as company, 'Prova inserimento attivita' as activity, '2018-01-01' as insert_date, 'Luca'as [executor] 
		UNION
		SELECT 
		'Chiusa' as status, '2018-01-01' as expiriration, 'compagnia11' as company, 'Prova inserimento attivita' as activity, '2018-01-01' as insert_date, 'Emanuele'as [executor] 








GO
