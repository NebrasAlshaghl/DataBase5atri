/****** Object:  Table [dbo].[ShipmentItem]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ShipmentItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShipmentId] [int] NOT NULL,
	[OrderItemId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[WarehouseId] [int] NOT NULL,
 CONSTRAINT [PK_ShipmentItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_ShipmentItem_ShipmentId] ON [dbo].[ShipmentItem]
(
	[ShipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[ShipmentItem]  WITH CHECK ADD  CONSTRAINT [FK_ShipmentItem_ShipmentId_Shipment_Id] FOREIGN KEY([ShipmentId])
REFERENCES [dbo].[Shipment] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[ShipmentItem] CHECK CONSTRAINT [FK_ShipmentItem_ShipmentId_Shipment_Id]
