/****** Object:  Table [dbo].[FacebookPixelConfiguration]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[FacebookPixelConfiguration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PixelId] [nvarchar](max) NULL,
	[Enabled] [bit] NOT NULL,
	[DisableForUsersNotAcceptingCookieConsent] [bit] NOT NULL,
	[StoreId] [int] NOT NULL,
	[PassUserProperties] [bit] NOT NULL,
	[UseAdvancedMatching] [bit] NOT NULL,
	[TrackPageView] [bit] NOT NULL,
	[TrackAddToCart] [bit] NOT NULL,
	[TrackPurchase] [bit] NOT NULL,
	[TrackViewContent] [bit] NOT NULL,
	[TrackAddToWishlist] [bit] NOT NULL,
	[TrackInitiateCheckout] [bit] NOT NULL,
	[TrackSearch] [bit] NOT NULL,
	[TrackContact] [bit] NOT NULL,
	[TrackCompleteRegistration] [bit] NOT NULL,
	[CustomEvents] [nvarchar](max) NULL,
 CONSTRAINT [PK_FacebookPixelConfiguration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
