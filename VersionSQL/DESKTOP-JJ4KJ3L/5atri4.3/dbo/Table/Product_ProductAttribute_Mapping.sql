/****** Object:  Table [dbo].[Product_ProductAttribute_Mapping]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Product_ProductAttribute_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductAttributeId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[TextPrompt] [nvarchar](max) NULL,
	[IsRequired] [bit] NOT NULL,
	[AttributeControlTypeId] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[ValidationMinLength] [int] NULL,
	[ValidationMaxLength] [int] NULL,
	[ValidationFileAllowedExtensions] [nvarchar](max) NULL,
	[ValidationFileMaximumSize] [int] NULL,
	[DefaultValue] [nvarchar](max) NULL,
	[ConditionAttributeXml] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product_ProductAttribute_Mapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_Product_ProductAttribute_Mapping_ProductAttributeId] ON [dbo].[Product_ProductAttribute_Mapping]
(
	[ProductAttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Product_ProductAttribute_Mapping_ProductId] ON [dbo].[Product_ProductAttribute_Mapping]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Product_ProductAttribute_Mapping_ProductId_DisplayOrder] ON [dbo].[Product_ProductAttribute_Mapping]
(
	[ProductId] ASC,
	[DisplayOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[Product_ProductAttribute_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductAttribute_Mapping_ProductAttributeId_ProductAttribute_Id] FOREIGN KEY([ProductAttributeId])
REFERENCES [dbo].[ProductAttribute] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Product_ProductAttribute_Mapping] CHECK CONSTRAINT [FK_Product_ProductAttribute_Mapping_ProductAttributeId_ProductAttribute_Id]
ALTER TABLE [dbo].[Product_ProductAttribute_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductAttribute_Mapping_ProductId_Product_Id] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Product_ProductAttribute_Mapping] CHECK CONSTRAINT [FK_Product_ProductAttribute_Mapping_ProductId_Product_Id]
