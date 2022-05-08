/****** Object:  Table [dbo].[Discount]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Discount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[CouponCode] [nvarchar](100) NULL,
	[AdminComment] [nvarchar](max) NULL,
	[DiscountTypeId] [int] NOT NULL,
	[UsePercentage] [bit] NOT NULL,
	[DiscountPercentage] [decimal](18, 4) NOT NULL,
	[DiscountAmount] [decimal](18, 4) NOT NULL,
	[MaximumDiscountAmount] [decimal](18, 4) NULL,
	[StartDateUtc] [datetime2](7) NULL,
	[EndDateUtc] [datetime2](7) NULL,
	[RequiresCouponCode] [bit] NOT NULL,
	[IsCumulative] [bit] NOT NULL,
	[DiscountLimitationId] [int] NOT NULL,
	[LimitationTimes] [int] NOT NULL,
	[MaximumDiscountedQuantity] [int] NULL,
	[AppliedToSubCategories] [bit] NOT NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
