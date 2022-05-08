/****** Object:  Table [dbo].[SearchTerm]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[SearchTerm](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Keyword] [nvarchar](max) NULL,
	[StoreId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_SearchTerm] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
