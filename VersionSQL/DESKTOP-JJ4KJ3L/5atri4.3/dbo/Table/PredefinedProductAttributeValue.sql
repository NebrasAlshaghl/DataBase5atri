/****** Object:  Table [dbo].[PredefinedProductAttributeValue]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[PredefinedProductAttributeValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[ProductAttributeId] [int] NOT NULL,
	[PriceAdjustment] [decimal](18, 4) NOT NULL,
	[PriceAdjustmentUsePercentage] [bit] NOT NULL,
	[WeightAdjustment] [decimal](18, 4) NOT NULL,
	[Cost] [decimal](18, 4) NOT NULL,
	[IsPreSelected] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_PredefinedProductAttributeValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_PredefinedProductAttributeValue_ProductAttributeId] ON [dbo].[PredefinedProductAttributeValue]
(
	[ProductAttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[PredefinedProductAttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_PredefinedProductAttributeValue_ProductAttributeId_ProductAttribute_Id] FOREIGN KEY([ProductAttributeId])
REFERENCES [dbo].[ProductAttribute] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[PredefinedProductAttributeValue] CHECK CONSTRAINT [FK_PredefinedProductAttributeValue_ProductAttributeId_ProductAttribute_Id]
