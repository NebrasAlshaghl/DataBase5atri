/****** Object:  Table [dbo].[Discount_AppliedToCategories]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Discount_AppliedToCategories](
	[Discount_Id] [int] NOT NULL,
	[Category_Id] [int] NOT NULL,
 CONSTRAINT [PK_Discount_AppliedToCategories] PRIMARY KEY CLUSTERED 
(
	[Discount_Id] ASC,
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_Discount_AppliedToCategories_Category_Id] ON [dbo].[Discount_AppliedToCategories]
(
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Discount_AppliedToCategories_Discount_Id] ON [dbo].[Discount_AppliedToCategories]
(
	[Discount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[Discount_AppliedToCategories]  WITH CHECK ADD  CONSTRAINT [FK_Discount_AppliedToCategories_Category_Id_Category_Id] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Discount_AppliedToCategories] CHECK CONSTRAINT [FK_Discount_AppliedToCategories_Category_Id_Category_Id]
ALTER TABLE [dbo].[Discount_AppliedToCategories]  WITH CHECK ADD  CONSTRAINT [FK_Discount_AppliedToCategories_Discount_Id_Discount_Id] FOREIGN KEY([Discount_Id])
REFERENCES [dbo].[Discount] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Discount_AppliedToCategories] CHECK CONSTRAINT [FK_Discount_AppliedToCategories_Discount_Id_Discount_Id]
