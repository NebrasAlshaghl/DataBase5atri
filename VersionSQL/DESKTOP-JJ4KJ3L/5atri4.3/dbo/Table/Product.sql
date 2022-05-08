/****** Object:  Table [dbo].[Product]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[MetaKeywords] [nvarchar](400) NULL,
	[MetaTitle] [nvarchar](400) NULL,
	[Sku] [nvarchar](400) NULL,
	[ManufacturerPartNumber] [nvarchar](400) NULL,
	[Gtin] [nvarchar](400) NULL,
	[RequiredProductIds] [nvarchar](1000) NULL,
	[AllowedQuantities] [nvarchar](1000) NULL,
	[ProductTypeId] [int] NOT NULL,
	[ParentGroupedProductId] [int] NOT NULL,
	[VisibleIndividually] [bit] NOT NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[AdminComment] [nvarchar](max) NULL,
	[ProductTemplateId] [int] NOT NULL,
	[VendorId] [int] NOT NULL,
	[ShowOnHomepage] [bit] NOT NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[AllowCustomerReviews] [bit] NOT NULL,
	[ApprovedRatingSum] [int] NOT NULL,
	[NotApprovedRatingSum] [int] NOT NULL,
	[ApprovedTotalReviews] [int] NOT NULL,
	[NotApprovedTotalReviews] [int] NOT NULL,
	[SubjectToAcl] [bit] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
	[IsGiftCard] [bit] NOT NULL,
	[GiftCardTypeId] [int] NOT NULL,
	[OverriddenGiftCardAmount] [decimal](18, 4) NULL,
	[RequireOtherProducts] [bit] NOT NULL,
	[AutomaticallyAddRequiredProducts] [bit] NOT NULL,
	[IsDownload] [bit] NOT NULL,
	[DownloadId] [int] NOT NULL,
	[UnlimitedDownloads] [bit] NOT NULL,
	[MaxNumberOfDownloads] [int] NOT NULL,
	[DownloadExpirationDays] [int] NULL,
	[DownloadActivationTypeId] [int] NOT NULL,
	[HasSampleDownload] [bit] NOT NULL,
	[SampleDownloadId] [int] NOT NULL,
	[HasUserAgreement] [bit] NOT NULL,
	[UserAgreementText] [nvarchar](max) NULL,
	[IsRecurring] [bit] NOT NULL,
	[RecurringCycleLength] [int] NOT NULL,
	[RecurringCyclePeriodId] [int] NOT NULL,
	[RecurringTotalCycles] [int] NOT NULL,
	[IsRental] [bit] NOT NULL,
	[RentalPriceLength] [int] NOT NULL,
	[RentalPricePeriodId] [int] NOT NULL,
	[IsShipEnabled] [bit] NOT NULL,
	[IsFreeShipping] [bit] NOT NULL,
	[ShipSeparately] [bit] NOT NULL,
	[AdditionalShippingCharge] [decimal](18, 4) NOT NULL,
	[DeliveryDateId] [int] NOT NULL,
	[IsTaxExempt] [bit] NOT NULL,
	[TaxCategoryId] [int] NOT NULL,
	[IsTelecommunicationsOrBroadcastingOrElectronicServices] [bit] NOT NULL,
	[ManageInventoryMethodId] [int] NOT NULL,
	[ProductAvailabilityRangeId] [int] NOT NULL,
	[UseMultipleWarehouses] [bit] NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[StockQuantity] [int] NOT NULL,
	[DisplayStockAvailability] [bit] NOT NULL,
	[DisplayStockQuantity] [bit] NOT NULL,
	[MinStockQuantity] [int] NOT NULL,
	[LowStockActivityId] [int] NOT NULL,
	[NotifyAdminForQuantityBelow] [int] NOT NULL,
	[BackorderModeId] [int] NOT NULL,
	[AllowBackInStockSubscriptions] [bit] NOT NULL,
	[OrderMinimumQuantity] [int] NOT NULL,
	[OrderMaximumQuantity] [int] NOT NULL,
	[AllowAddingOnlyExistingAttributeCombinations] [bit] NOT NULL,
	[NotReturnable] [bit] NOT NULL,
	[DisableBuyButton] [bit] NOT NULL,
	[DisableWishlistButton] [bit] NOT NULL,
	[AvailableForPreOrder] [bit] NOT NULL,
	[PreOrderAvailabilityStartDateTimeUtc] [datetime2](7) NULL,
	[CallForPrice] [bit] NOT NULL,
	[Price] [decimal](18, 4) NOT NULL,
	[OldPrice] [decimal](18, 4) NOT NULL,
	[ProductCost] [decimal](18, 4) NOT NULL,
	[CustomerEntersPrice] [bit] NOT NULL,
	[MinimumCustomerEnteredPrice] [decimal](18, 4) NOT NULL,
	[MaximumCustomerEnteredPrice] [decimal](18, 4) NOT NULL,
	[BasepriceEnabled] [bit] NOT NULL,
	[BasepriceAmount] [decimal](18, 4) NOT NULL,
	[BasepriceUnitId] [int] NOT NULL,
	[BasepriceBaseAmount] [decimal](18, 4) NOT NULL,
	[BasepriceBaseUnitId] [int] NOT NULL,
	[MarkAsNew] [bit] NOT NULL,
	[MarkAsNewStartDateTimeUtc] [datetime2](7) NULL,
	[MarkAsNewEndDateTimeUtc] [datetime2](7) NULL,
	[HasTierPrices] [bit] NOT NULL,
	[HasDiscountsApplied] [bit] NOT NULL,
	[Weight] [decimal](18, 4) NOT NULL,
	[Length] [decimal](18, 4) NOT NULL,
	[Width] [decimal](18, 4) NOT NULL,
	[Height] [decimal](18, 4) NOT NULL,
	[AvailableStartDateTimeUtc] [datetime2](7) NULL,
	[AvailableEndDateTimeUtc] [datetime2](7) NULL,
	[DisplayOrder] [int] NOT NULL,
	[Published] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
	[UpdatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_GetLowStockProducts] ON [dbo].[Product]
(
	[Deleted] ASC,
	[VendorId] ASC,
	[ProductTypeId] ASC,
	[ManageInventoryMethodId] ASC,
	[MinStockQuantity] ASC,
	[UseMultipleWarehouses] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Product_Delete_Id] ON [dbo].[Product]
(
	[Deleted] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Product_Deleted_and_Published] ON [dbo].[Product]
(
	[Published] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Product_LimitedToStores] ON [dbo].[Product]
(
	[LimitedToStores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Product_ParentGroupedProductId] ON [dbo].[Product]
(
	[ParentGroupedProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Product_PriceDatesEtc] ON [dbo].[Product]
(
	[Price] ASC,
	[AvailableStartDateTimeUtc] ASC,
	[AvailableEndDateTimeUtc] ASC,
	[Published] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Product_Published] ON [dbo].[Product]
(
	[Published] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Product_ShowOnHomepage] ON [dbo].[Product]
(
	[ShowOnHomepage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Product_SubjectToAcl] ON [dbo].[Product]
(
	[SubjectToAcl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Product_VisibleIndividually] ON [dbo].[Product]
(
	[VisibleIndividually] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Product_VisibleIndividually_Published_Deleted_Extended] ON [dbo].[Product]
(
	[VisibleIndividually] ASC,
	[Published] ASC,
	[Deleted] ASC
)
INCLUDE([Id],[AvailableStartDateTimeUtc],[AvailableEndDateTimeUtc]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
