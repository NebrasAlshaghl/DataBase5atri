/****** Object:  Table [dbo].[ShippingMethodRestrictions]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ShippingMethodRestrictions](
	[ShippingMethod_Id] [int] NOT NULL,
	[Country_Id] [int] NOT NULL,
 CONSTRAINT [PK_ShippingMethodRestrictions] PRIMARY KEY CLUSTERED 
(
	[ShippingMethod_Id] ASC,
	[Country_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_ShippingMethodRestrictions_Country_Id] ON [dbo].[ShippingMethodRestrictions]
(
	[Country_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_ShippingMethodRestrictions_ShippingMethod_Id] ON [dbo].[ShippingMethodRestrictions]
(
	[ShippingMethod_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[ShippingMethodRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_ShippingMethodRestrictions_Country_Id_Country_Id] FOREIGN KEY([Country_Id])
REFERENCES [dbo].[Country] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[ShippingMethodRestrictions] CHECK CONSTRAINT [FK_ShippingMethodRestrictions_Country_Id_Country_Id]
ALTER TABLE [dbo].[ShippingMethodRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_ShippingMethodRestrictions_ShippingMethod_Id_ShippingMethod_Id] FOREIGN KEY([ShippingMethod_Id])
REFERENCES [dbo].[ShippingMethod] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[ShippingMethodRestrictions] CHECK CONSTRAINT [FK_ShippingMethodRestrictions_ShippingMethod_Id_ShippingMethod_Id]
