/****** Object:  Table [dbo].[SpecificationAttributeOption]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[SpecificationAttributeOption](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ColorSquaresRgb] [nvarchar](100) NULL,
	[SpecificationAttributeId] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_SpecificationAttributeOption] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_SpecificationAttributeOption_SpecificationAttributeId] ON [dbo].[SpecificationAttributeOption]
(
	[SpecificationAttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[SpecificationAttributeOption]  WITH CHECK ADD  CONSTRAINT [FK_SpecificationAttributeOption_SpecificationAttributeId_SpecificationAttribute_Id] FOREIGN KEY([SpecificationAttributeId])
REFERENCES [dbo].[SpecificationAttribute] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[SpecificationAttributeOption] CHECK CONSTRAINT [FK_SpecificationAttributeOption_SpecificationAttributeId_SpecificationAttribute_Id]
