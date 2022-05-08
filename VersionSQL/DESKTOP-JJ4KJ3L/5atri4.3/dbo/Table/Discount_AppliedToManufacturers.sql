/****** Object:  Table [dbo].[Discount_AppliedToManufacturers]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Discount_AppliedToManufacturers](
	[Discount_Id] [int] NOT NULL,
	[Manufacturer_Id] [int] NOT NULL,
 CONSTRAINT [PK_Discount_AppliedToManufacturers] PRIMARY KEY CLUSTERED 
(
	[Discount_Id] ASC,
	[Manufacturer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_Discount_AppliedToManufacturers_Discount_Id] ON [dbo].[Discount_AppliedToManufacturers]
(
	[Discount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Discount_AppliedToManufacturers_Manufacturer_Id] ON [dbo].[Discount_AppliedToManufacturers]
(
	[Manufacturer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[Discount_AppliedToManufacturers]  WITH CHECK ADD  CONSTRAINT [FK_Discount_AppliedToManufacturers_Discount_Id_Discount_Id] FOREIGN KEY([Discount_Id])
REFERENCES [dbo].[Discount] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Discount_AppliedToManufacturers] CHECK CONSTRAINT [FK_Discount_AppliedToManufacturers_Discount_Id_Discount_Id]
ALTER TABLE [dbo].[Discount_AppliedToManufacturers]  WITH CHECK ADD  CONSTRAINT [FK_Discount_AppliedToManufacturers_Manufacturer_Id_Manufacturer_Id] FOREIGN KEY([Manufacturer_Id])
REFERENCES [dbo].[Manufacturer] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Discount_AppliedToManufacturers] CHECK CONSTRAINT [FK_Discount_AppliedToManufacturers_Manufacturer_Id_Manufacturer_Id]
