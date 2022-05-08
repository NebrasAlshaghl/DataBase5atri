/****** Object:  Table [dbo].[TierPrice]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[TierPrice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerRoleId] [int] NULL,
	[ProductId] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 4) NOT NULL,
	[StartDateTimeUtc] [datetime2](7) NULL,
	[EndDateTimeUtc] [datetime2](7) NULL,
 CONSTRAINT [PK_TierPrice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_TierPrice_CustomerRoleId] ON [dbo].[TierPrice]
(
	[CustomerRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_TierPrice_ProductId] ON [dbo].[TierPrice]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[TierPrice]  WITH CHECK ADD  CONSTRAINT [FK_TierPrice_CustomerRoleId_CustomerRole_Id] FOREIGN KEY([CustomerRoleId])
REFERENCES [dbo].[CustomerRole] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[TierPrice] CHECK CONSTRAINT [FK_TierPrice_CustomerRoleId_CustomerRole_Id]
ALTER TABLE [dbo].[TierPrice]  WITH CHECK ADD  CONSTRAINT [FK_TierPrice_ProductId_Product_Id] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[TierPrice] CHECK CONSTRAINT [FK_TierPrice_ProductId_Product_Id]
