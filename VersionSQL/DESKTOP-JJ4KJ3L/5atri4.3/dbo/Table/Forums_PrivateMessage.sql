/****** Object:  Table [dbo].[Forums_PrivateMessage]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Forums_PrivateMessage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](450) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[FromCustomerId] [int] NOT NULL,
	[ToCustomerId] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[IsRead] [bit] NOT NULL,
	[IsDeletedByAuthor] [bit] NOT NULL,
	[IsDeletedByRecipient] [bit] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Forums_PrivateMessage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_Forums_PrivateMessage_FromCustomerId] ON [dbo].[Forums_PrivateMessage]
(
	[FromCustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Forums_PrivateMessage_ToCustomerId] ON [dbo].[Forums_PrivateMessage]
(
	[ToCustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[Forums_PrivateMessage]  WITH CHECK ADD  CONSTRAINT [FK_Forums_PrivateMessage_FromCustomerId_Customer_Id] FOREIGN KEY([FromCustomerId])
REFERENCES [dbo].[Customer] ([Id])
ALTER TABLE [dbo].[Forums_PrivateMessage] CHECK CONSTRAINT [FK_Forums_PrivateMessage_FromCustomerId_Customer_Id]
ALTER TABLE [dbo].[Forums_PrivateMessage]  WITH CHECK ADD  CONSTRAINT [FK_Forums_PrivateMessage_ToCustomerId_Customer_Id] FOREIGN KEY([ToCustomerId])
REFERENCES [dbo].[Customer] ([Id])
ALTER TABLE [dbo].[Forums_PrivateMessage] CHECK CONSTRAINT [FK_Forums_PrivateMessage_ToCustomerId_Customer_Id]
