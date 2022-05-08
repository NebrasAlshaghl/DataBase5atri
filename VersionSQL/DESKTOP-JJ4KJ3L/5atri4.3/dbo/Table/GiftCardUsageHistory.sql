/****** Object:  Table [dbo].[GiftCardUsageHistory]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[GiftCardUsageHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GiftCardId] [int] NOT NULL,
	[UsedWithOrderId] [int] NOT NULL,
	[UsedValue] [decimal](18, 4) NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_GiftCardUsageHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_GiftCardUsageHistory_GiftCardId] ON [dbo].[GiftCardUsageHistory]
(
	[GiftCardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_GiftCardUsageHistory_UsedWithOrderId] ON [dbo].[GiftCardUsageHistory]
(
	[UsedWithOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[GiftCardUsageHistory]  WITH CHECK ADD  CONSTRAINT [FK_GiftCardUsageHistory_GiftCardId_GiftCard_Id] FOREIGN KEY([GiftCardId])
REFERENCES [dbo].[GiftCard] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[GiftCardUsageHistory] CHECK CONSTRAINT [FK_GiftCardUsageHistory_GiftCardId_GiftCard_Id]
ALTER TABLE [dbo].[GiftCardUsageHistory]  WITH CHECK ADD  CONSTRAINT [FK_GiftCardUsageHistory_UsedWithOrderId_Order_Id] FOREIGN KEY([UsedWithOrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[GiftCardUsageHistory] CHECK CONSTRAINT [FK_GiftCardUsageHistory_UsedWithOrderId_Order_Id]
