/****** Object:  Table [dbo].[ProductWarehouseInventory]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ProductWarehouseInventory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[StockQuantity] [int] NOT NULL,
	[ReservedQuantity] [int] NOT NULL,
 CONSTRAINT [PK_ProductWarehouseInventory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_ProductWarehouseInventory_ProductId] ON [dbo].[ProductWarehouseInventory]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_ProductWarehouseInventory_WarehouseId] ON [dbo].[ProductWarehouseInventory]
(
	[WarehouseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[ProductWarehouseInventory]  WITH CHECK ADD  CONSTRAINT [FK_ProductWarehouseInventory_ProductId_Product_Id] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[ProductWarehouseInventory] CHECK CONSTRAINT [FK_ProductWarehouseInventory_ProductId_Product_Id]
ALTER TABLE [dbo].[ProductWarehouseInventory]  WITH CHECK ADD  CONSTRAINT [FK_ProductWarehouseInventory_WarehouseId_Warehouse_Id] FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[Warehouse] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[ProductWarehouseInventory] CHECK CONSTRAINT [FK_ProductWarehouseInventory_WarehouseId_Warehouse_Id]
