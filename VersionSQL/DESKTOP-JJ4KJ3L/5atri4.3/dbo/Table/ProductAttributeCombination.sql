/****** Object:  Table [dbo].[ProductAttributeCombination]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ProductAttributeCombination](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sku] [nvarchar](400) NULL,
	[ManufacturerPartNumber] [nvarchar](400) NULL,
	[Gtin] [nvarchar](400) NULL,
	[ProductId] [int] NOT NULL,
	[AttributesXml] [nvarchar](max) NULL,
	[StockQuantity] [int] NOT NULL,
	[AllowOutOfStockOrders] [bit] NOT NULL,
	[OverriddenPrice] [decimal](18, 4) NULL,
	[NotifyAdminForQuantityBelow] [int] NOT NULL,
	[PictureId] [int] NOT NULL,
 CONSTRAINT [PK_ProductAttributeCombination] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_ProductAttributeCombination_ProductId] ON [dbo].[ProductAttributeCombination]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[ProductAttributeCombination]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttributeCombination_ProductId_Product_Id] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[ProductAttributeCombination] CHECK CONSTRAINT [FK_ProductAttributeCombination_ProductId_Product_Id]
