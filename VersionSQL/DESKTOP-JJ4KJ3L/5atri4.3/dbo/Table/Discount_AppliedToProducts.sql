/****** Object:  Table [dbo].[Discount_AppliedToProducts]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Discount_AppliedToProducts](
	[Discount_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
 CONSTRAINT [PK_Discount_AppliedToProducts] PRIMARY KEY CLUSTERED 
(
	[Discount_Id] ASC,
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_Discount_AppliedToProducts_Discount_Id] ON [dbo].[Discount_AppliedToProducts]
(
	[Discount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Discount_AppliedToProducts_Product_Id] ON [dbo].[Discount_AppliedToProducts]
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[Discount_AppliedToProducts]  WITH CHECK ADD  CONSTRAINT [FK_Discount_AppliedToProducts_Discount_Id_Discount_Id] FOREIGN KEY([Discount_Id])
REFERENCES [dbo].[Discount] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Discount_AppliedToProducts] CHECK CONSTRAINT [FK_Discount_AppliedToProducts_Discount_Id_Discount_Id]
ALTER TABLE [dbo].[Discount_AppliedToProducts]  WITH CHECK ADD  CONSTRAINT [FK_Discount_AppliedToProducts_Product_Id_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Discount_AppliedToProducts] CHECK CONSTRAINT [FK_Discount_AppliedToProducts_Product_Id_Product_Id]
