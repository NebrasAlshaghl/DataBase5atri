/****** Object:  Table [dbo].[Product_SpecificationAttribute_Mapping]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Product_SpecificationAttribute_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomValue] [nvarchar](4000) NULL,
	[ProductId] [int] NOT NULL,
	[SpecificationAttributeOptionId] [int] NOT NULL,
	[AttributeTypeId] [int] NOT NULL,
	[AllowFiltering] [bit] NOT NULL,
	[ShowOnProductPage] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Product_SpecificationAttribute_Mapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_Product_SpecificationAttribute_Mapping_ProductId] ON [dbo].[Product_SpecificationAttribute_Mapping]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Product_SpecificationAttribute_Mapping_SpecificationAttributeOptionId] ON [dbo].[Product_SpecificationAttribute_Mapping]
(
	[SpecificationAttributeOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_PSAM_AllowFiltering] ON [dbo].[Product_SpecificationAttribute_Mapping]
(
	[AllowFiltering] ASC
)
INCLUDE([ProductId],[SpecificationAttributeOptionId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_PSAM_SpecificationAttributeOptionId_AllowFiltering] ON [dbo].[Product_SpecificationAttribute_Mapping]
(
	[SpecificationAttributeOptionId] ASC,
	[AllowFiltering] ASC
)
INCLUDE([ProductId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[Product_SpecificationAttribute_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_Product_SpecificationAttribute_Mapping_ProductId_Product_Id] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Product_SpecificationAttribute_Mapping] CHECK CONSTRAINT [FK_Product_SpecificationAttribute_Mapping_ProductId_Product_Id]
ALTER TABLE [dbo].[Product_SpecificationAttribute_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_Product_SpecificationAttribute_Mapping_SpecificationAttributeOptionId_SpecificationAttributeOption_Id] FOREIGN KEY([SpecificationAttributeOptionId])
REFERENCES [dbo].[SpecificationAttributeOption] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Product_SpecificationAttribute_Mapping] CHECK CONSTRAINT [FK_Product_SpecificationAttribute_Mapping_SpecificationAttributeOptionId_SpecificationAttributeOption_Id]
