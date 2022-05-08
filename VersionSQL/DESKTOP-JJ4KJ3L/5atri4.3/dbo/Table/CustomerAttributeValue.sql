/****** Object:  Table [dbo].[CustomerAttributeValue]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[CustomerAttributeValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[CustomerAttributeId] [int] NOT NULL,
	[IsPreSelected] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_CustomerAttributeValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_CustomerAttributeValue_CustomerAttributeId] ON [dbo].[CustomerAttributeValue]
(
	[CustomerAttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[CustomerAttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAttributeValue_CustomerAttributeId_CustomerAttribute_Id] FOREIGN KEY([CustomerAttributeId])
REFERENCES [dbo].[CustomerAttribute] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[CustomerAttributeValue] CHECK CONSTRAINT [FK_CustomerAttributeValue_CustomerAttributeId_CustomerAttribute_Id]
