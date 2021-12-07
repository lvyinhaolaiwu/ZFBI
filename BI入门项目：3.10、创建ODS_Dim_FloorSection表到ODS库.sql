USE [ZFBI_Study_ODS]
GO

/****** Object:  Table [dbo].[ODS_Dim_FloorSection]    Script Date: 2021/11/15 23:01:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ODS_Dim_FloorSection](
	[FloorSectionID] [int] IDENTITY(1,1) NOT NULL,
	[FloorSectionName] [varchar](30) NULL,
	[Minimum] [int] NULL,
	[Maximum] [int] NULL,
	[SectionSegment] [varchar](30) NULL,
 CONSTRAINT [PK_ODS_DIM_FLOORSECTION] PRIMARY KEY CLUSTERED 
(
	[FloorSectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'楼层区间ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_FloorSection', @level2type=N'COLUMN',@level2name=N'FloorSectionID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'楼层区间名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_FloorSection', @level2type=N'COLUMN',@level2name=N'FloorSectionName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最小值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_FloorSection', @level2type=N'COLUMN',@level2name=N'Minimum'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_FloorSection', @level2type=N'COLUMN',@level2name=N'Maximum'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区间段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_FloorSection', @level2type=N'COLUMN',@level2name=N'SectionSegment'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ODS_Dim_楼层区间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_FloorSection'
GO


