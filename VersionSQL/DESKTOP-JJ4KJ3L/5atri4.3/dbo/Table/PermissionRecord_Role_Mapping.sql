﻿/****** Object:  Table [dbo].[PermissionRecord_Role_Mapping]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[PermissionRecord_Role_Mapping](
	[PermissionRecord_Id] [int] NOT NULL,
	[CustomerRole_Id] [int] NOT NULL,
 CONSTRAINT [PK_PermissionRecord_Role_Mapping] PRIMARY KEY CLUSTERED 
(
	[PermissionRecord_Id] ASC,
	[CustomerRole_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX_PermissionRecord_Role_Mapping_CustomerRole_Id] ON [dbo].[PermissionRecord_Role_Mapping]
(
	[CustomerRole_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_PermissionRecord_Role_Mapping_PermissionRecord_Id] ON [dbo].[PermissionRecord_Role_Mapping]
(
	[PermissionRecord_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[PermissionRecord_Role_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_PermissionRecord_Role_Mapping_CustomerRole_Id_CustomerRole_Id] FOREIGN KEY([CustomerRole_Id])
REFERENCES [dbo].[CustomerRole] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[PermissionRecord_Role_Mapping] CHECK CONSTRAINT [FK_PermissionRecord_Role_Mapping_CustomerRole_Id_CustomerRole_Id]
ALTER TABLE [dbo].[PermissionRecord_Role_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_PermissionRecord_Role_Mapping_PermissionRecord_Id_PermissionRecord_Id] FOREIGN KEY([PermissionRecord_Id])
REFERENCES [dbo].[PermissionRecord] ([Id])
ON DELETE CASCADE
ALTER TABLE [dbo].[PermissionRecord_Role_Mapping] CHECK CONSTRAINT [FK_PermissionRecord_Role_Mapping_PermissionRecord_Id_PermissionRecord_Id]
