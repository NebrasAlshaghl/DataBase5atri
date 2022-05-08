/****** Object:  Table [dbo].[Product_ProductTag_Mapping]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Product_ProductTag_Mapping](
	[Product_Id] [int] NOT NULL,
	[ProductTag_Id] [int] NOT NULL,
 CONSTRAINT [PK_Product_ProductTag_Mapping] PRIMARY KEY CLUSTERED 
(
	[Product_Id] ASC,
	[ProductTag_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_Product_ProductTag_Mapping_Product_Id] ON [dbo].[Product_ProductTag_Mapping]
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Product_ProductTag_Mapping_ProductTag_Id] ON [dbo].[Product_ProductTag_Mapping]
(
	[ProductTag_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[Product_ProductTag_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductTag_Mapping_Product_Id_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Product_ProductTag_Mapping] CHECK CONSTRAINT [FK_Product_ProductTag_Mapping_Product_Id_Product_Id]
ALTER TABLE [dbo].[Product_ProductTag_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductTag_Mapping_ProductTag_Id_ProductTag_Id] FOREIGN KEY([ProductTag_Id])
REFERENCES [dbo].[ProductTag] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Product_ProductTag_Mapping] CHECK CONSTRAINT [FK_Product_ProductTag_Mapping_ProductTag_Id_ProductTag_Id]
