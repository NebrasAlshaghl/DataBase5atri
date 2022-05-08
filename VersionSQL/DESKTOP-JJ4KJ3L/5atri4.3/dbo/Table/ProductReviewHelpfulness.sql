/****** Object:  Table [dbo].[ProductReviewHelpfulness]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ProductReviewHelpfulness](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductReviewId] [int] NOT NULL,
	[WasHelpful] [bit] NOT NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_ProductReviewHelpfulness] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_ProductReviewHelpfulness_ProductReviewId] ON [dbo].[ProductReviewHelpfulness]
(
	[ProductReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[ProductReviewHelpfulness]  WITH CHECK ADD  CONSTRAINT [FK_ProductReviewHelpfulness_ProductReviewId_ProductReview_Id] FOREIGN KEY([ProductReviewId])
REFERENCES [dbo].[ProductReview] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[ProductReviewHelpfulness] CHECK CONSTRAINT [FK_ProductReviewHelpfulness_ProductReviewId_ProductReview_Id]
