/****** Object:  Table [dbo].[News]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Short] [nvarchar](max) NOT NULL,
	[Full] [nvarchar](max) NOT NULL,
	[MetaKeywords] [nvarchar](400) NULL,
	[MetaTitle] [nvarchar](400) NULL,
	[LanguageId] [int] NOT NULL,
	[Published] [bit] NOT NULL,
	[StartDateUtc] [datetime2](7) NULL,
	[EndDateUtc] [datetime2](7) NULL,
	[AllowComments] [bit] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_News_LanguageId] ON [dbo].[News]
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_LanguageId_Language_Id] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_LanguageId_Language_Id]
