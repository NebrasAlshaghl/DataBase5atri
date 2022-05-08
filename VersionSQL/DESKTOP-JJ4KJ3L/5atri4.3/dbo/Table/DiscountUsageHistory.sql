/****** Object:  Table [dbo].[DiscountUsageHistory]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[DiscountUsageHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DiscountId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_DiscountUsageHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_DiscountUsageHistory_DiscountId] ON [dbo].[DiscountUsageHistory]
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_DiscountUsageHistory_OrderId] ON [dbo].[DiscountUsageHistory]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[DiscountUsageHistory]  WITH CHECK ADD  CONSTRAINT [FK_DiscountUsageHistory_DiscountId_Discount_Id] FOREIGN KEY([DiscountId])
REFERENCES [dbo].[Discount] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[DiscountUsageHistory] CHECK CONSTRAINT [FK_DiscountUsageHistory_DiscountId_Discount_Id]
ALTER TABLE [dbo].[DiscountUsageHistory]  WITH CHECK ADD  CONSTRAINT [FK_DiscountUsageHistory_OrderId_Order_Id] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[DiscountUsageHistory] CHECK CONSTRAINT [FK_DiscountUsageHistory_OrderId_Order_Id]
