/****** Object:  Table [dbo].[Forums_PostVote]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Forums_PostVote](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ForumPostId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[IsUp] [bit] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Forums_PostVote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_Forums_PostVote_ForumPostId] ON [dbo].[Forums_PostVote]
(
	[ForumPostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[Forums_PostVote]  WITH CHECK ADD  CONSTRAINT [FK_Forums_PostVote_ForumPostId_Forums_Post_Id] FOREIGN KEY([ForumPostId])
REFERENCES [dbo].[Forums_Post] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Forums_PostVote] CHECK CONSTRAINT [FK_Forums_PostVote_ForumPostId_Forums_Post_Id]
