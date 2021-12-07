USE [ZFBI_Study_ODS]
GO

/****** Object:  Table [dbo].[ODS_Dim_RentSection]    Script Date: 2021/11/16 11:24:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ODS_Dim_RentSection](
	[RentSectionID] [int] IDENTITY(1,1) NOT NULL,
	[RentSectionName] [varchar](30) NULL,
	[Minimum] [int] NULL,
	[Maximum] [int] NULL,
 CONSTRAINT [PK_ODS_DIM_RENTSECTION] PRIMARY KEY CLUSTERED 
(
	[RentSectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'租金区间ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_RentSection', @level2type=N'COLUMN',@level2name=N'RentSectionID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'租金区间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_RentSection', @level2type=N'COLUMN',@level2name=N'RentSectionName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最小值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_RentSection', @level2type=N'COLUMN',@level2name=N'Minimum'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_RentSection', @level2type=N'COLUMN',@level2name=N'Maximum'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ODS_Dim_租金区间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_RentSection'
GO


