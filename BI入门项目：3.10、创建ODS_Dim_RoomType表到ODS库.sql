USE [ZFBI_Study_ODS]
GO

/****** Object:  Table [dbo].[ODS_Dim_RoomType]    Script Date: 2021/11/15 22:03:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [ZFBI_Study_ODS].[dbo].[ODS_Dim_RoomType](
	[RoomTypeID] [int] IDENTITY(1,1) NOT NULL,
	[RoomTypeName] [varchar](10) NULL,
 CONSTRAINT [PK_ODS_DIM_ROOMTYPE] PRIMARY KEY CLUSTERED 
(
	[RoomTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_RoomType', @level2type=N'COLUMN',@level2name=N'RoomTypeID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_RoomType', @level2type=N'COLUMN',@level2name=N'RoomTypeName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ODS_Dim_房间类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_RoomType'
GO


