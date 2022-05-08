/****** Object:  Table [dbo].[CheckoutAttributeValue]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[CheckoutAttributeValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[ColorSquaresRgb] [nvarchar](100) NULL,
	[CheckoutAttributeId] [int] NOT NULL,
	[PriceAdjustment] [decimal](18, 4) NOT NULL,
	[WeightAdjustment] [decimal](18, 4) NOT NULL,
	[IsPreSelected] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_CheckoutAttributeValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_CheckoutAttributeValue_CheckoutAttributeId] ON [dbo].[CheckoutAttributeValue]
(
	[CheckoutAttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[CheckoutAttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_CheckoutAttributeValue_CheckoutAttributeId_CheckoutAttribute_Id] FOREIGN KEY([CheckoutAttributeId])
REFERENCES [dbo].[CheckoutAttribute] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[CheckoutAttributeValue] CHECK CONSTRAINT [FK_CheckoutAttributeValue_CheckoutAttributeId_CheckoutAttribute_Id]
