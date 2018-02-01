USE [Corporate]
GO

ALTER TABLE [dbo].[Department] DROP CONSTRAINT [CK__Departmen__CostC__37A5467C]
GO

ALTER TABLE [dbo].[Department] DROP CONSTRAINT [DF__Departmen__Activ__38996AB5]
GO

/****** Object:  Table [dbo].[Department]    Script Date: 2/1/2018 3:00:32 PM ******/
DROP TABLE [dbo].[Department]
GO

/****** Object:  Table [dbo].[Department]    Script Date: 2/1/2018 3:00:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](288) NOT NULL,
	[CostCenter] [int] NOT NULL,
	[Active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Department] ADD  DEFAULT ((1)) FOR [Active]
GO

ALTER TABLE [dbo].[Department]  WITH CHECK ADD CHECK  (([CostCenter]>=(100000) AND [CostCenter]<=(999999)))
GO


