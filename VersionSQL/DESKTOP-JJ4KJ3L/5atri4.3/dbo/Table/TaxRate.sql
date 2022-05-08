/****** Object:  Table [dbo].[TaxRate]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[TaxRate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StoreId] [int] NOT NULL,
	[TaxCategoryId] [int] NOT NULL,
	[CountryId] [int] NOT NULL,
	[StateProvinceId] [int] NOT NULL,
	[Zip] [nvarchar](max) NULL,
	[Percentage] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_TaxRate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
