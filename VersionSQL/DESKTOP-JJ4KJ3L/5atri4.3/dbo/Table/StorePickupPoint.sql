/****** Object:  Table [dbo].[StorePickupPoint]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[StorePickupPoint](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[AddressId] [int] NOT NULL,
	[PickupFee] [decimal](18, 4) NOT NULL,
	[OpeningHours] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[Latitude] [decimal](18, 4) NULL,
	[Longitude] [decimal](18, 4) NULL,
	[TransitDays] [int] NULL,
 CONSTRAINT [PK_StorePickupPoint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
