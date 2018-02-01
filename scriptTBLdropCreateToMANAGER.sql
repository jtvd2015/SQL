USE [Corporate]
GO

ALTER TABLE [dbo].[Manager] DROP CONSTRAINT [FK__Manager__Departm__3B75D760]
GO

/****** Object:  Table [dbo].[Manager]    Script Date: 2/1/2018 3:02:52 PM ******/
DROP TABLE [dbo].[Manager]
GO

/****** Object:  Table [dbo].[Manager]    Script Date: 2/1/2018 3:02:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Manager](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](288) NOT NULL,
	[LastName] [nvarchar](288) NOT NULL,
	[Department] [nvarchar](288) NOT NULL,
	[DepartmentId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Manager]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO


