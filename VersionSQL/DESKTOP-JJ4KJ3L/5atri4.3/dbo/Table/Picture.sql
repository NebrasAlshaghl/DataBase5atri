/****** Object:  Table [dbo].[Picture]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Picture](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MimeType] [nvarchar](40) NOT NULL,
	[SeoFilename] [nvarchar](300) NULL,
	[AltAttribute] [nvarchar](max) NULL,
	[TitleAttribute] [nvarchar](max) NULL,
	[IsNew] [bit] NOT NULL,
	[VirtualPath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Picture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
