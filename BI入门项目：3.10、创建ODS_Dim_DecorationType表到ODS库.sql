USE [ZFBI_Study_ODS]
GO

/****** Object:  Table [dbo].[ODS_Dim_DecorationType]    Script Date: 2021/11/15 22:47:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ODS_Dim_DecorationType](
	[DecorationTypeID] [int] IDENTITY(1,1) NOT NULL,
	[DecorationTypeName] [varchar](10) NULL,
 CONSTRAINT [PK_ODS_DIM_DECORATIONTYPE] PRIMARY KEY CLUSTERED 
(
	[DecorationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'装修类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_DecorationType', @level2type=N'COLUMN',@level2name=N'DecorationTypeID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'装修类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_DecorationType', @level2type=N'COLUMN',@level2name=N'DecorationTypeName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ODS_Dim_装修类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_DecorationType'
GO


