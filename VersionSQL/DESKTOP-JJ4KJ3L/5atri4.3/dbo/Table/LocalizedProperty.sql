/****** Object:  Table [dbo].[LocalizedProperty]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[LocalizedProperty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LocaleKeyGroup] [nvarchar](400) NOT NULL,
	[LocaleKey] [nvarchar](400) NOT NULL,
	[LocaleValue] [nvarchar](max) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[EntityId] [int] NOT NULL,
 CONSTRAINT [PK_LocalizedProperty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_LocalizedProperty_LanguageId] ON [dbo].[LocalizedProperty]
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[LocalizedProperty]  WITH CHECK ADD  CONSTRAINT [FK_LocalizedProperty_LanguageId_Language_Id] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[LocalizedProperty] CHECK CONSTRAINT [FK_LocalizedProperty_LanguageId_Language_Id]
