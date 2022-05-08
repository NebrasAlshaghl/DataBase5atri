/****** Object:  Procedure [dbo].[DeleteGuests]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [DeleteGuests]
(
	@OnlyWithoutShoppingCart bit = 1,
	@CreatedFromUtc datetime,
	@CreatedToUtc datetime,
	@TotalRecordsDeleted int = null OUTPUT
)
AS
BEGIN
	CREATE TABLE #tmp_guests (CustomerId int)
	CREATE TABLE #tmp_adresses (AddressId int)
		
	INSERT #tmp_guests (CustomerId)
	SELECT c.[Id] 
	FROM [Customer] c with (NOLOCK)
		LEFT JOIN [ShoppingCartItem] sci with (NOLOCK) ON sci.[CustomerId] = c.[Id]
		INNER JOIN (
			--guests only
			SELECT ccrm.[Customer_Id] 
			FROM [Customer_CustomerRole_Mapping] ccrm with (NOLOCK)
				INNER JOIN [CustomerRole] cr with (NOLOCK) ON cr.[Id] = ccrm.[CustomerRole_Id]
			WHERE cr.[SystemName] = N'Guests'
		) g ON g.[Customer_Id] = c.[Id]
		LEFT JOIN [Order] o with (NOLOCK) ON o.[CustomerId] = c.[Id]
		LEFT JOIN [BlogComment] bc with (NOLOCK) ON bc.[CustomerId] = c.[Id]
		LEFT JOIN [NewsComment] nc with (NOLOCK) ON nc.[CustomerId] = c.[Id]
		LEFT JOIN [ProductReview] pr with (NOLOCK) ON pr.[CustomerId] = c.[Id]
		LEFT JOIN [ProductReviewHelpfulness] prh with (NOLOCK) ON prh.[CustomerId] = c.[Id]
		LEFT JOIN [PollVotingRecord] pvr with (NOLOCK) ON pvr.[CustomerId] = c.[Id]
		LEFT JOIN [Forums_Topic] ft with (NOLOCK) ON ft.[CustomerId] = c.[Id]
		LEFT JOIN [Forums_Post] fp with (NOLOCK) ON fp.[CustomerId] = c.[Id]
	WHERE 1 = 1
		--no orders
		AND (o.Id is null)
		--no blog comments
		AND (bc.Id is null)
		--no news comments
		AND (nc.Id is null)
		--no product reviews
		AND (pr.Id is null)
		--no product reviews helpfulness
		AND (prh.Id is null)
		--no poll voting
		AND (pvr.Id is null)
		--no forum topics
		AND (ft.Id is null)
		--no forum topics
		AND (fp.Id is null)
		--no system accounts
		AND (c.IsSystemAccount = 0)
		--created from
		AND ((@CreatedFromUtc is null) OR (c.[CreatedOnUtc] > @CreatedFromUtc))
		--created to
		AND ((@CreatedToUtc is null) OR (c.[CreatedOnUtc] < @CreatedToUtc))
		--shopping cart items
		AND ((@OnlyWithoutShoppingCart = 0) OR (sci.Id is null))

	INSERT #tmp_adresses (AddressId)
	SELECT [Address_Id] FROM [CustomerAddresses] WHERE [Customer_Id] IN (SELECT [CustomerId] FROM #tmp_guests)

	--delete guests
	DELETE [Customer]
	WHERE [Id] IN (SELECT [CustomerId] FROM #tmp_guests)
	
	--delete attributes
	DELETE [GenericAttribute]
	WHERE ([EntityId] IN (SELECT [CustomerId] FROM #tmp_guests))
	AND
	([KeyGroup] = N'Customer')

	--delete addresses
	DELETE [Address]
	WHERE [Id] IN (SELECT [AddressId] FROM #tmp_adresses)
	
	--total records
	SELECT @TotalRecordsDeleted = COUNT(1) FROM #tmp_guests
	
	DROP TABLE #tmp_guests
	DROP TABLE #tmp_adresses
END
