/****** Object:  Table [dbo].[CustomerRole]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[CustomerRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[SystemName] [nvarchar](255) NULL,
	[FreeShipping] [bit] NOT NULL,
	[TaxExempt] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
	[IsSystemRole] [bit] NOT NULL,
	[EnablePasswordLifetime] [bit] NOT NULL,
	[OverrideTaxDisplayType] [bit] NOT NULL,
	[DefaultTaxDisplayTypeId] [int] NOT NULL,
	[PurchasedWithProductId] [int] NOT NULL,
 CONSTRAINT [PK_CustomerRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
