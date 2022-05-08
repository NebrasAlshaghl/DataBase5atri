/****** Object:  Table [dbo].[PollVotingRecord]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[PollVotingRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PollAnswerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_PollVotingRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_PollVotingRecord_CustomerId] ON [dbo].[PollVotingRecord]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_PollVotingRecord_PollAnswerId] ON [dbo].[PollVotingRecord]
(
	[PollAnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[PollVotingRecord]  WITH CHECK ADD  CONSTRAINT [FK_PollVotingRecord_CustomerId_Customer_Id] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[PollVotingRecord] CHECK CONSTRAINT [FK_PollVotingRecord_CustomerId_Customer_Id]
ALTER TABLE [dbo].[PollVotingRecord]  WITH CHECK ADD  CONSTRAINT [FK_PollVotingRecord_PollAnswerId_PollAnswer_Id] FOREIGN KEY([PollAnswerId])
REFERENCES [dbo].[PollAnswer] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[PollVotingRecord] CHECK CONSTRAINT [FK_PollVotingRecord_PollAnswerId_PollAnswer_Id]
