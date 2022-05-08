/****** Object:  Table [dbo].[BlogPost]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[BlogPost](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[MetaKeywords] [nvarchar](400) NULL,
	[MetaTitle] [nvarchar](400) NULL,
	[LanguageId] [int] NOT NULL,
	[IncludeInSitemap] [bit] NOT NULL,
	[BodyOverview] [nvarchar](max) NULL,
	[AllowComments] [bit] NOT NULL,
	[Tags] [nvarchar](max) NULL,
	[StartDateUtc] [datetime2](7) NULL,
	[EndDateUtc] [datetime2](7) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[LimitedToStores] [bit] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_BlogPost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_BlogPost_LanguageId] ON [dbo].[BlogPost]
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[BlogPost]  WITH CHECK ADD  CONSTRAINT [FK_BlogPost_LanguageId_Language_Id] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[BlogPost] CHECK CONSTRAINT [FK_BlogPost_LanguageId_Language_Id]
