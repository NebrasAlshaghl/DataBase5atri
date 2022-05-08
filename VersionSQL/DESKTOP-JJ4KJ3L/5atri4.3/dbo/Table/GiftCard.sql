/****** Object:  Table [dbo].[GiftCard]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[GiftCard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PurchasedWithOrderItemId] [int] NULL,
	[GiftCardTypeId] [int] NOT NULL,
	[Amount] [decimal](18, 4) NOT NULL,
	[IsGiftCardActivated] [bit] NOT NULL,
	[GiftCardCouponCode] [nvarchar](max) NULL,
	[RecipientName] [nvarchar](max) NULL,
	[RecipientEmail] [nvarchar](max) NULL,
	[SenderName] [nvarchar](max) NULL,
	[SenderEmail] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[IsRecipientNotified] [bit] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_GiftCard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_GiftCard_PurchasedWithOrderItemId] ON [dbo].[GiftCard]
(
	[PurchasedWithOrderItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[GiftCard]  WITH CHECK ADD  CONSTRAINT [FK_GiftCard_PurchasedWithOrderItemId_OrderItem_Id] FOREIGN KEY([PurchasedWithOrderItemId])
REFERENCES [dbo].[OrderItem] ([Id])
ALTER TABLE [dbo].[GiftCard] CHECK CONSTRAINT [FK_GiftCard_PurchasedWithOrderItemId_OrderItem_Id]
