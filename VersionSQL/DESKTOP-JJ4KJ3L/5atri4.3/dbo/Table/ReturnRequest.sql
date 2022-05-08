/****** Object:  Table [dbo].[ReturnRequest]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ReturnRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReasonForReturn] [nvarchar](max) NOT NULL,
	[RequestedAction] [nvarchar](max) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CustomNumber] [nvarchar](max) NULL,
	[StoreId] [int] NOT NULL,
	[OrderItemId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[CustomerComments] [nvarchar](max) NULL,
	[UploadedFileId] [int] NOT NULL,
	[StaffNotes] [nvarchar](max) NULL,
	[ReturnRequestStatusId] [int] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
	[UpdatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ReturnRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_ReturnRequest_CustomerId] ON [dbo].[ReturnRequest]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[ReturnRequest]  WITH CHECK ADD  CONSTRAINT [FK_ReturnRequest_CustomerId_Customer_Id] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[ReturnRequest] CHECK CONSTRAINT [FK_ReturnRequest_CustomerId_Customer_Id]
