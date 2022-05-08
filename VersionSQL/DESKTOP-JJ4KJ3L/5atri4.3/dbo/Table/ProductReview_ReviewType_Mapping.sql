/****** Object:  Table [dbo].[ProductReview_ReviewType_Mapping]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ProductReview_ReviewType_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductReviewId] [int] NOT NULL,
	[ReviewTypeId] [int] NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_ProductReview_ReviewType_Mapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_ProductReview_ReviewType_Mapping_ProductReviewId] ON [dbo].[ProductReview_ReviewType_Mapping]
(
	[ProductReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_ProductReview_ReviewType_Mapping_ReviewTypeId] ON [dbo].[ProductReview_ReviewType_Mapping]
(
	[ReviewTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[ProductReview_ReviewType_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_ProductReview_ReviewType_Mapping_ProductReviewId_ProductReview_Id] FOREIGN KEY([ProductReviewId])
REFERENCES [dbo].[ProductReview] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[ProductReview_ReviewType_Mapping] CHECK CONSTRAINT [FK_ProductReview_ReviewType_Mapping_ProductReviewId_ProductReview_Id]
ALTER TABLE [dbo].[ProductReview_ReviewType_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_ProductReview_ReviewType_Mapping_ReviewTypeId_ReviewType_Id] FOREIGN KEY([ReviewTypeId])
REFERENCES [dbo].[ReviewType] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[ProductReview_ReviewType_Mapping] CHECK CONSTRAINT [FK_ProductReview_ReviewType_Mapping_ReviewTypeId_ReviewType_Id]
