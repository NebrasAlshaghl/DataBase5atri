/****** Object:  Procedure [dbo].[ProductTagCountLoadAll]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [ProductTagCountLoadAll]
(
	@StoreId int,
	@AllowedCustomerRoleIds	nvarchar(MAX) = null	--a list of customer role IDs (comma-separated list) for which a product should be shown (if a subject to ACL)
)
AS
BEGIN
	SET NOCOUNT ON
		
	--filter by customer role IDs (access control list)
	SET @AllowedCustomerRoleIds = isnull(@AllowedCustomerRoleIds, '')	
	CREATE TABLE #FilteredCustomerRoleIds
	(
		CustomerRoleId int not null
	)
		
	INSERT INTO #FilteredCustomerRoleIds (CustomerRoleId)
	SELECT CAST(data as int) FROM [nop_splitstring_to_table](@AllowedCustomerRoleIds, ',')
	DECLARE @FilteredCustomerRoleIdsCount int	
	SET @FilteredCustomerRoleIdsCount = (SELECT COUNT(1) FROM #FilteredCustomerRoleIds)
	
	SELECT pt.Id as [ProductTagId], COUNT(p.Id) as [ProductCount]
	FROM ProductTag pt with (NOLOCK)
	LEFT JOIN Product_ProductTag_Mapping pptm with (NOLOCK) ON pt.[Id] = pptm.[ProductTag_Id]
	LEFT JOIN Product p with (NOLOCK) ON pptm.[Product_Id] = p.[Id]
	WHERE
		p.[Deleted] = 0
		AND p.Published = 1
		AND (@StoreId = 0 or (p.LimitedToStores = 0 OR EXISTS (
			SELECT 1 FROM [StoreMapping] sm with (NOLOCK)
			WHERE [sm].EntityId = p.Id AND [sm].EntityName = 'Product' and [sm].StoreId=@StoreId
			)))
		AND (@FilteredCustomerRoleIdsCount = 0 or (p.SubjectToAcl = 0 OR EXISTS (
			SELECT 1 FROM #FilteredCustomerRoleIds [fcr]
			WHERE
				[fcr].CustomerRoleId IN (
					SELECT [acl].CustomerRoleId
					FROM [AclRecord] acl with (NOLOCK)
					WHERE [acl].EntityId = p.Id AND [acl].EntityName = 'Product'
				))
			))
	GROUP BY pt.Id
	ORDER BY pt.Id
END
