/****** Object:  Table [dbo].[Forums_Post]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Forums_Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[IPAddress] [nvarchar](100) NULL,
	[CustomerId] [int] NOT NULL,
	[TopicId] [int] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
	[UpdatedOnUtc] [datetime2](7) NOT NULL,
	[VoteCount] [int] NOT NULL,
 CONSTRAINT [PK_Forums_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_Forums_Post_CustomerId] ON [dbo].[Forums_Post]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Forums_Post_TopicId] ON [dbo].[Forums_Post]
(
	[TopicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[Forums_Post]  WITH CHECK ADD  CONSTRAINT [FK_Forums_Post_CustomerId_Customer_Id] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ALTER TABLE [dbo].[Forums_Post] CHECK CONSTRAINT [FK_Forums_Post_CustomerId_Customer_Id]
ALTER TABLE [dbo].[Forums_Post]  WITH CHECK ADD  CONSTRAINT [FK_Forums_Post_TopicId_Forums_Topic_Id] FOREIGN KEY([TopicId])
REFERENCES [dbo].[Forums_Topic] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Forums_Post] CHECK CONSTRAINT [FK_Forums_Post_TopicId_Forums_Topic_Id]
