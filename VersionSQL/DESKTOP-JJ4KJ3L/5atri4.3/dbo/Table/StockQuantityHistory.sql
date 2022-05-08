/****** Object:  Table [dbo].[StockQuantityHistory]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[StockQuantityHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[QuantityAdjustment] [int] NOT NULL,
	[StockQuantity] [int] NOT NULL,
	[Message] [nvarchar](max) NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
	[CombinationId] [int] NULL,
	[WarehouseId] [int] NULL,
 CONSTRAINT [PK_StockQuantityHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_StockQuantityHistory_ProductId] ON [dbo].[StockQuantityHistory]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[StockQuantityHistory]  WITH CHECK ADD  CONSTRAINT [FK_StockQuantityHistory_ProductId_Product_Id] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[StockQuantityHistory] CHECK CONSTRAINT [FK_StockQuantityHistory_ProductId_Product_Id]
