/****** Object:  Table [dbo].[RecurringPaymentHistory]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[RecurringPaymentHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RecurringPaymentId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_RecurringPaymentHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_RecurringPaymentHistory_RecurringPaymentId] ON [dbo].[RecurringPaymentHistory]
(
	[RecurringPaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[RecurringPaymentHistory]  WITH CHECK ADD  CONSTRAINT [FK_RecurringPaymentHistory_RecurringPaymentId_RecurringPayment_Id] FOREIGN KEY([RecurringPaymentId])
REFERENCES [dbo].[RecurringPayment] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[RecurringPaymentHistory] CHECK CONSTRAINT [FK_RecurringPaymentHistory_RecurringPaymentId_RecurringPayment_Id]
