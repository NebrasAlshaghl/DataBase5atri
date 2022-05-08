/****** Object:  Table [dbo].[Forums_Forum]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Forums_Forum](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[ForumGroupId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[NumTopics] [int] NOT NULL,
	[NumPosts] [int] NOT NULL,
	[LastTopicId] [int] NOT NULL,
	[LastPostId] [int] NOT NULL,
	[LastPostCustomerId] [int] NOT NULL,
	[LastPostTime] [datetime2](7) NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
	[UpdatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Forums_Forum] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_Forums_Forum_DisplayOrder] ON [dbo].[Forums_Forum]
(
	[DisplayOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Forums_Forum_ForumGroupId] ON [dbo].[Forums_Forum]
(
	[ForumGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[Forums_Forum]  WITH CHECK ADD  CONSTRAINT [FK_Forums_Forum_ForumGroupId_Forums_Group_Id] FOREIGN KEY([ForumGroupId])
REFERENCES [dbo].[Forums_Group] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Forums_Forum] CHECK CONSTRAINT [FK_Forums_Forum_ForumGroupId_Forums_Group_Id]
