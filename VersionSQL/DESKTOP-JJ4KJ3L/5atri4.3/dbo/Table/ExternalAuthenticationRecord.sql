/****** Object:  Table [dbo].[ExternalAuthenticationRecord]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ExternalAuthenticationRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Email] [nvarchar](max) NULL,
	[ExternalIdentifier] [nvarchar](max) NULL,
	[ExternalDisplayIdentifier] [nvarchar](max) NULL,
	[OAuthToken] [nvarchar](max) NULL,
	[OAuthAccessToken] [nvarchar](max) NULL,
	[ProviderSystemName] [nvarchar](max) NULL,
 CONSTRAINT [PK_ExternalAuthenticationRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_ExternalAuthenticationRecord_CustomerId] ON [dbo].[ExternalAuthenticationRecord]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[ExternalAuthenticationRecord]  WITH CHECK ADD  CONSTRAINT [FK_ExternalAuthenticationRecord_CustomerId_Customer_Id] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[ExternalAuthenticationRecord] CHECK CONSTRAINT [FK_ExternalAuthenticationRecord_CustomerId_Customer_Id]
