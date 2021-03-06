/****** Object:  Table [dbo].[OrderNote]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[OrderNote](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Note] [nvarchar](max) NOT NULL,
	[OrderId] [int] NOT NULL,
	[DownloadId] [int] NOT NULL,
	[DisplayToCustomer] [bit] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_OrderNote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_OrderNote_OrderId] ON [dbo].[OrderNote]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[OrderNote]  WITH CHECK ADD  CONSTRAINT [FK_OrderNote_OrderId_Order_Id] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[OrderNote] CHECK CONSTRAINT [FK_OrderNote_OrderId_Order_Id]
