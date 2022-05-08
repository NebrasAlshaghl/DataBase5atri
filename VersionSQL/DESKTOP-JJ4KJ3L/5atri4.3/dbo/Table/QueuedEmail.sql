/****** Object:  Table [dbo].[QueuedEmail]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[QueuedEmail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[From] [nvarchar](500) NOT NULL,
	[FromName] [nvarchar](500) NULL,
	[To] [nvarchar](500) NOT NULL,
	[ToName] [nvarchar](500) NULL,
	[ReplyTo] [nvarchar](500) NULL,
	[ReplyToName] [nvarchar](500) NULL,
	[CC] [nvarchar](500) NULL,
	[Bcc] [nvarchar](500) NULL,
	[Subject] [nvarchar](1000) NULL,
	[EmailAccountId] [int] NOT NULL,
	[PriorityId] [int] NOT NULL,
	[Body] [nvarchar](max) NULL,
	[AttachmentFilePath] [nvarchar](max) NULL,
	[AttachmentFileName] [nvarchar](max) NULL,
	[AttachedDownloadId] [int] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
	[DontSendBeforeDateUtc] [datetime2](7) NULL,
	[SentTries] [int] NOT NULL,
	[SentOnUtc] [datetime2](7) NULL,
 CONSTRAINT [PK_QueuedEmail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_QueuedEmail_CreatedOnUtc] ON [dbo].[QueuedEmail]
(
	[CreatedOnUtc] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_QueuedEmail_EmailAccountId] ON [dbo].[QueuedEmail]
(
	[EmailAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_QueuedEmail_SentOnUtc_DontSendBeforeDateUtc_Extended] ON [dbo].[QueuedEmail]
(
	[SentOnUtc] ASC,
	[DontSendBeforeDateUtc] ASC
)
INCLUDE([SentTries]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[QueuedEmail]  WITH CHECK ADD  CONSTRAINT [FK_QueuedEmail_EmailAccountId_EmailAccount_Id] FOREIGN KEY([EmailAccountId])
REFERENCES [dbo].[EmailAccount] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[QueuedEmail] CHECK CONSTRAINT [FK_QueuedEmail_EmailAccountId_EmailAccount_Id]
