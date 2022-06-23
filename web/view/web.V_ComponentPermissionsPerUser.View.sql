USE [RFID2022_OLD]
GO
/****** Object:  View [web].[V_ComponentPermissionsPerUser]    Script Date: 23/06/2022 11:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [web].[V_ComponentPermissionsPerUser] as

SELECT 
		[componentId]
		,UserId
		,case when Sum(canCreate)> 1 then 1 else Sum(canCreate)	end  as canCreate
		,case when Sum(canRead)	 > 1 then 1 else Sum(canRead)	end  as canRead
		,case when Sum(canUpdate)> 1 then 1 else Sum(canUpdate)	end  as canUpdate
		,case when Sum(canDelete)> 1 then 1 else Sum(canDelete)	end  as canDelete	
FROM 
(

		SELECT 
				cp.[componentId]
				,ug.UserId
				,case when Sum(cp.canCreate)> 1 then 1 else Sum(cp.canCreate)	end  as canCreate
				,case when Sum(cp.canRead)	> 1 then 1 else Sum(cp.canRead)		end  as canRead
				,case when Sum(cp.canUpdate)> 1 then 1 else Sum(cp.canUpdate)	end  as canUpdate
				,case when Sum(cp.canDelete)> 1 then 1 else Sum(cp.canDelete)	end  as canDelete	
		FROM 
				[web].[V_ComponentPermissions] cp
				INNER JOIN [web].UserGroups ug on ug.GroupId = cp.groupId
		GROUP BY 
				cp.[componentId],ug.UserId
		UNION ALL

		SELECT 
				cp.Id
				,u.id
				,0  as canCreate
				,1  as canRead
				,0  as canUpdate
				,0  as canDelete
		FROM 
				[WEb].Components cp, [WEB].Users u
		WHERE
				u.HasCompleteDataVisibility=1

		UNION ALL

		SELECT 
				cp.Id
				,u.id
				,1  as canCreate
				,1  as canRead
				,1  as canUpdate
				,1  as canDelete
		FROM 
				[web].Components cp, [WEB].Users u
		WHERE
				u.IsAdmin=1

) as T
GROUP BY 
		T.[componentId],T.UserId





GO
