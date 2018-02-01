USE [Corporate]
GO

ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK__Employee__Manage__3E52440B]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 2/1/2018 3:02:13 PM ******/
DROP TABLE [dbo].[Employee]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 2/1/2018 3:02:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](288) NOT NULL,
	[LastName] [varchar](288) NOT NULL,
	[Birthday] [datetime] NOT NULL,
	[Job] [nvarchar](288) NULL,
	[Manager] [nvarchar](288) NOT NULL,
	[ManagerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([ManagerId])
REFERENCES [dbo].[Manager] ([Id])
GO


