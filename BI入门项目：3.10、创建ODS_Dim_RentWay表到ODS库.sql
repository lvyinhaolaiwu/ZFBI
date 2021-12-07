USE [ZFBI_Study_ODS]
GO

/****** Object:  Table [dbo].[ODS_Dim_RentWay]    Script Date: 2021/11/15 22:21:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [ZFBI_Study_ODS].[dbo].[ODS_Dim_RentWay](
	[RentWayID] [int] IDENTITY(1,1) NOT NULL,
	[RentWayName] [varchar](10) NULL,
 CONSTRAINT [PK_ODS_DIM_RENTWAY] PRIMARY KEY CLUSTERED 
(
	[RentWayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出租方式ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_RentWay', @level2type=N'COLUMN',@level2name=N'RentWayID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出租方式名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_RentWay', @level2type=N'COLUMN',@level2name=N'RentWayName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ODS_Dim_出租方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_RentWay'
GO


