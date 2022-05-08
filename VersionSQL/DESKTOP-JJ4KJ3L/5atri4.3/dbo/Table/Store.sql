/****** Object:  Table [dbo].[Store]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Store](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[Url] [nvarchar](400) NOT NULL,
	[Hosts] [nvarchar](1000) NULL,
	[CompanyName] [nvarchar](1000) NULL,
	[CompanyAddress] [nvarchar](1000) NULL,
	[CompanyPhoneNumber] [nvarchar](1000) NULL,
	[CompanyVat] [nvarchar](1000) NULL,
	[SslEnabled] [bit] NOT NULL,
	[DefaultLanguageId] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
