/****** Object:  Table [dbo].[Forums_Topic]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Forums_Topic](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](450) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ForumId] [int] NOT NULL,
	[TopicTypeId] [int] NOT NULL,
	[NumPosts] [int] NOT NULL,
	[Views] [int] NOT NULL,
	[LastPostId] [int] NOT NULL,
	[LastPostCustomerId] [int] NOT NULL,
	[LastPostTime] [datetime2](7) NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
	[UpdatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Forums_Topic] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_Forums_Topic_CustomerId] ON [dbo].[Forums_Topic]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Forums_Topic_ForumId] ON [dbo].[Forums_Topic]
(
	[ForumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[Forums_Topic]  WITH CHECK ADD  CONSTRAINT [FK_Forums_Topic_CustomerId_Customer_Id] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ALTER TABLE [dbo].[Forums_Topic] CHECK CONSTRAINT [FK_Forums_Topic_CustomerId_Customer_Id]
ALTER TABLE [dbo].[Forums_Topic]  WITH CHECK ADD  CONSTRAINT [FK_Forums_Topic_ForumId_Forums_Forum_Id] FOREIGN KEY([ForumId])
REFERENCES [dbo].[Forums_Forum] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Forums_Topic] CHECK CONSTRAINT [FK_Forums_Topic_ForumId_Forums_Forum_Id]
