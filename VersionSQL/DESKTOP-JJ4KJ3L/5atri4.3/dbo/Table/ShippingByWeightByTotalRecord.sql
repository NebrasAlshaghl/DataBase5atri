/****** Object:  Table [dbo].[ShippingByWeightByTotalRecord]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ShippingByWeightByTotalRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WeightFrom] [decimal](18, 2) NOT NULL,
	[WeightTo] [decimal](18, 2) NOT NULL,
	[OrderSubtotalFrom] [decimal](18, 2) NOT NULL,
	[OrderSubtotalTo] [decimal](18, 2) NOT NULL,
	[AdditionalFixedCost] [decimal](18, 2) NOT NULL,
	[PercentageRateOfSubtotal] [decimal](18, 2) NOT NULL,
	[RatePerWeightUnit] [decimal](18, 2) NOT NULL,
	[LowerWeightLimit] [decimal](18, 2) NOT NULL,
	[Zip] [nvarchar](400) NULL,
	[StoreId] [int] NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[CountryId] [int] NOT NULL,
	[StateProvinceId] [int] NOT NULL,
	[ShippingMethodId] [int] NOT NULL,
	[TransitDays] [int] NULL,
 CONSTRAINT [PK_ShippingByWeightByTotalRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
