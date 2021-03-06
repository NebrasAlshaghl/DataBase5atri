/****** Object:  Table [dbo].[VendorAttribute]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[VendorAttribute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[IsRequired] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[AttributeControlTypeId] [int] NOT NULL,
 CONSTRAINT [PK_VendorAttribute] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
