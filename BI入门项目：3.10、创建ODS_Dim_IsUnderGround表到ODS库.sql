USE [ZFBI_Study_ODS]
GO

/****** Object:  Table [dbo].[ODS_Dim_IsUnderGround]    Script Date: 2021/11/16 11:15:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ODS_Dim_IsUnderGround](
	[IsUnderGroundID] [int] IDENTITY(1,1) NOT NULL,
	[IsUnderGroundName] [varchar](10) NULL,
 CONSTRAINT [PK_ODS_DIM_ISUNDERGROUND] PRIMARY KEY CLUSTERED 
(
	[IsUnderGroundID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否地铁房ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_IsUnderGround', @level2type=N'COLUMN',@level2name=N'IsUnderGroundID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否地铁房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_IsUnderGround', @level2type=N'COLUMN',@level2name=N'IsUnderGroundName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ODS_Dim_是否地铁房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_IsUnderGround'
GO


