USE [ZFBI_Study_ODS]
GO

/****** Object:  Table [dbo].[ODS_Fact_ZF_AllDate_GZ]    Script Date: 2021/11/16 11:36:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ODS_Fact_ZF_AllDate_GZ](
	[ZFID] [int] NULL,
	[RoomTypeID] [int] NULL,
	[RentWayID] [int] NULL,
	[DecorationTypeID] [int] NULL,
	[FloorSectionID] [int] NULL,
	[RegionID] [int] NULL,
	[IsUnderGroundID] [int] NULL,
	[RentSectionID] [int] NULL,
	[Money] [numeric](18, 2) NULL,
	[Amount] [float] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ODS_Fact_ZF_AllDate_GZ]  WITH CHECK ADD  CONSTRAINT [FK_Dim_RentSectionID] FOREIGN KEY([RentSectionID])
REFERENCES [dbo].[ODS_Dim_RentSection] ([RentSectionID])
GO

ALTER TABLE [dbo].[ODS_Fact_ZF_AllDate_GZ] CHECK CONSTRAINT [FK_Dim_RentSectionID]
GO

ALTER TABLE [dbo].[ODS_Fact_ZF_AllDate_GZ]  WITH CHECK ADD  CONSTRAINT [FK_Fact_ZF_DecorationType] FOREIGN KEY([DecorationTypeID])
REFERENCES [dbo].[ODS_Dim_DecorationType] ([DecorationTypeID])
GO

ALTER TABLE [dbo].[ODS_Fact_ZF_AllDate_GZ] CHECK CONSTRAINT [FK_Fact_ZF_DecorationType]
GO

ALTER TABLE [dbo].[ODS_Fact_ZF_AllDate_GZ]  WITH CHECK ADD  CONSTRAINT [FK_Fact_ZF_FloorSection] FOREIGN KEY([FloorSectionID])
REFERENCES [dbo].[ODS_Dim_FloorSection] ([FloorSectionID])
GO

ALTER TABLE [dbo].[ODS_Fact_ZF_AllDate_GZ] CHECK CONSTRAINT [FK_Fact_ZF_FloorSection]
GO

ALTER TABLE [dbo].[ODS_Fact_ZF_AllDate_GZ]  WITH CHECK ADD  CONSTRAINT [FK_Fact_ZF_IsUnderGround] FOREIGN KEY([IsUnderGroundID])
REFERENCES [dbo].[ODS_Dim_IsUnderGround] ([IsUnderGroundID])
GO

ALTER TABLE [dbo].[ODS_Fact_ZF_AllDate_GZ] CHECK CONSTRAINT [FK_Fact_ZF_IsUnderGround]
GO

ALTER TABLE [dbo].[ODS_Fact_ZF_AllDate_GZ]  WITH CHECK ADD  CONSTRAINT [FK_Fact_ZF_Region] FOREIGN KEY([RegionID])
REFERENCES [dbo].[ODS_Dim_Region] ([RegionID])
GO

ALTER TABLE [dbo].[ODS_Fact_ZF_AllDate_GZ] CHECK CONSTRAINT [FK_Fact_ZF_Region]
GO

ALTER TABLE [dbo].[ODS_Fact_ZF_AllDate_GZ]  WITH CHECK ADD  CONSTRAINT [FK_Fact_ZF_RentWay] FOREIGN KEY([RentWayID])
REFERENCES [dbo].[ODS_Dim_RentWay] ([RentWayID])
GO

ALTER TABLE [dbo].[ODS_Fact_ZF_AllDate_GZ] CHECK CONSTRAINT [FK_Fact_ZF_RentWay]
GO

ALTER TABLE [dbo].[ODS_Fact_ZF_AllDate_GZ]  WITH CHECK ADD  CONSTRAINT [FK_Fact_ZF_RoomType] FOREIGN KEY([RoomTypeID])
REFERENCES [dbo].[ODS_Dim_RoomType] ([RoomTypeID])
GO

ALTER TABLE [dbo].[ODS_Fact_ZF_AllDate_GZ] CHECK CONSTRAINT [FK_Fact_ZF_RoomType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ZFID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Fact_ZF_AllDate_GZ', @level2type=N'COLUMN',@level2name=N'ZFID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Fact_ZF_AllDate_GZ', @level2type=N'COLUMN',@level2name=N'RoomTypeID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出租方式ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Fact_ZF_AllDate_GZ', @level2type=N'COLUMN',@level2name=N'RentWayID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'装修类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Fact_ZF_AllDate_GZ', @level2type=N'COLUMN',@level2name=N'DecorationTypeID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'楼层区间ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Fact_ZF_AllDate_GZ', @level2type=N'COLUMN',@level2name=N'FloorSectionID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区域ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Fact_ZF_AllDate_GZ', @level2type=N'COLUMN',@level2name=N'RegionID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否地铁房ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Fact_ZF_AllDate_GZ', @level2type=N'COLUMN',@level2name=N'IsUnderGroundID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'租金区间ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Fact_ZF_AllDate_GZ', @level2type=N'COLUMN',@level2name=N'RentSectionID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'租金' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Fact_ZF_AllDate_GZ', @level2type=N'COLUMN',@level2name=N'Money'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Fact_ZF_AllDate_GZ', @level2type=N'COLUMN',@level2name=N'Amount'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ODS_Fact_租房事实' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Fact_ZF_AllDate_GZ'
GO


