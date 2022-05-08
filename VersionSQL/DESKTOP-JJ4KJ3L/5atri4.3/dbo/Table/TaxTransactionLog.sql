/****** Object:  Table [dbo].[TaxTransactionLog]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[TaxTransactionLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusCode] [int] NOT NULL,
	[Url] [nvarchar](max) NULL,
	[RequestMessage] [nvarchar](max) NULL,
	[ResponseMessage] [nvarchar](max) NULL,
	[CustomerId] [int] NOT NULL,
	[CreatedDateUtc] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TaxTransactionLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
