/****** Object:  Table [dbo].[RecurringPayment]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[RecurringPayment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InitialOrderId] [int] NOT NULL,
	[CycleLength] [int] NOT NULL,
	[CyclePeriodId] [int] NOT NULL,
	[TotalCycles] [int] NOT NULL,
	[StartDateUtc] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LastPaymentFailed] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_RecurringPayment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_RecurringPayment_InitialOrderId] ON [dbo].[RecurringPayment]
(
	[InitialOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[RecurringPayment]  WITH CHECK ADD  CONSTRAINT [FK_RecurringPayment_InitialOrderId_Order_Id] FOREIGN KEY([InitialOrderId])
REFERENCES [dbo].[Order] ([Id])
ALTER TABLE [dbo].[RecurringPayment] CHECK CONSTRAINT [FK_RecurringPayment_InitialOrderId_Order_Id]
