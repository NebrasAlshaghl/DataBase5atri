/****** Object:  Table [dbo].[Campaign]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Campaign](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Subject] [nvarchar](max) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[StoreId] [int] NOT NULL,
	[CustomerRoleId] [int] NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
	[DontSendBeforeDateUtc] [datetime2](7) NULL,
 CONSTRAINT [PK_Campaign] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
