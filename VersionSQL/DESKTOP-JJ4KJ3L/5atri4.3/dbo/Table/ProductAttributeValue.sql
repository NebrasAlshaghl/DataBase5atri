/****** Object:  Table [dbo].[ProductAttributeValue]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ProductAttributeValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[ColorSquaresRgb] [nvarchar](100) NULL,
	[ProductAttributeMappingId] [int] NOT NULL,
	[AttributeValueTypeId] [int] NOT NULL,
	[AssociatedProductId] [int] NOT NULL,
	[ImageSquaresPictureId] [int] NOT NULL,
	[PriceAdjustment] [decimal](18, 4) NOT NULL,
	[PriceAdjustmentUsePercentage] [bit] NOT NULL,
	[WeightAdjustment] [decimal](18, 4) NOT NULL,
	[Cost] [decimal](18, 4) NOT NULL,
	[CustomerEntersQty] [bit] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsPreSelected] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[PictureId] [int] NOT NULL,
 CONSTRAINT [PK_ProductAttributeValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_ProductAttributeValue_ProductAttributeMappingId] ON [dbo].[ProductAttributeValue]
(
	[ProductAttributeMappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_ProductAttributeValue_ProductAttributeMappingId_DisplayOrder] ON [dbo].[ProductAttributeValue]
(
	[ProductAttributeMappingId] ASC,
	[DisplayOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[ProductAttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttributeValue_ProductAttributeMappingId_Product_ProductAttribute_Mapping_Id] FOREIGN KEY([ProductAttributeMappingId])
REFERENCES [dbo].[Product_ProductAttribute_Mapping] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[ProductAttributeValue] CHECK CONSTRAINT [FK_ProductAttributeValue_ProductAttributeMappingId_Product_ProductAttribute_Mapping_Id]
