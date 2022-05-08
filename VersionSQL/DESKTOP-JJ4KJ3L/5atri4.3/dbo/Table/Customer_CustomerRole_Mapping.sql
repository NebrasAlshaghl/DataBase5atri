/****** Object:  Table [dbo].[Customer_CustomerRole_Mapping]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Customer_CustomerRole_Mapping](
	[Customer_Id] [int] NOT NULL,
	[CustomerRole_Id] [int] NOT NULL,
 CONSTRAINT [PK_Customer_CustomerRole_Mapping] PRIMARY KEY CLUSTERED 
(
	[Customer_Id] ASC,
	[CustomerRole_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_Customer_CustomerRole_Mapping_Customer_Id] ON [dbo].[Customer_CustomerRole_Mapping]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Customer_CustomerRole_Mapping_CustomerRole_Id] ON [dbo].[Customer_CustomerRole_Mapping]
(
	[CustomerRole_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[Customer_CustomerRole_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_Customer_CustomerRole_Mapping_Customer_Id_Customer_Id] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Customer_CustomerRole_Mapping] CHECK CONSTRAINT [FK_Customer_CustomerRole_Mapping_Customer_Id_Customer_Id]
ALTER TABLE [dbo].[Customer_CustomerRole_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_Customer_CustomerRole_Mapping_CustomerRole_Id_CustomerRole_Id] FOREIGN KEY([CustomerRole_Id])
REFERENCES [dbo].[CustomerRole] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[Customer_CustomerRole_Mapping] CHECK CONSTRAINT [FK_Customer_CustomerRole_Mapping_CustomerRole_Id_CustomerRole_Id]
