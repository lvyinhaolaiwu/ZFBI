USE [ZFBI_Study_DW]
GO
6 error(s), 0 warning(s)

MSSQLSRV2012::Profile\Fact\Templates\CreateCube(9) (FactMeasure "ZFID"):
   [translation error] unresolved member: Formula

MSSQLSRV2012::Profile\Fact\Templates\CreateCube(9) (FactMeasure "Money"):
   [translation error] unresolved member: Formula

MSSQLSRV2012::Profile\Fact\Templates\CreateCube(9) (FactMeasure "Amount"):
   [translation error] unresolved member: Formula

MSSQLSRV2012::Profile\Fact\Templates\CreateCube(14) (FactMeasure "ZFID"):
   [translation error] unresolved member: Formula

MSSQLSRV2012::Profile\Fact\Templates\CreateCube(14) (FactMeasure "Money"):
   [translation error] unresolved member: Formula

MSSQLSRV2012::Profile\Fact\Templates\CreateCube(14) (FactMeasure "Amount"):
   [translation error] unresolved member: Formula

6 error(s), 0 warning(s)

MSSQLSRV2012::Profile\Fact\Templates\CreateCube(9) (FactMeasure "ZFID"):
   [translation error] unresolved member: Formula

MSSQLSRV2012::Profile\Fact\Templates\CreateCube(9) (FactMeasure "Money"):
   [translation error] unresolved member: Formula

MSSQLSRV2012::Profile\Fact\Templates\CreateCube(9) (FactMeasure "Amount"):
   [translation error] unresolved member: Formula

MSSQLSRV2012::Profile\Fact\Templates\CreateCube(14) (FactMeasure "ZFID"):
   [translation error] unresolved member: Formula

MSSQLSRV2012::Profile\Fact\Templates\CreateCube(14) (FactMeasure "Money"):
   [translation error] unresolved member: Formula

MSSQLSRV2012::Profile\Fact\Templates\CreateCube(14) (FactMeasure "Amount"):
   [translation error] unresolved member: Formula

   INSERT INTO DW_Fact_ZF_AllDate_GZ (
   DW_Dim_RoomType.RoomTypeID,
   DW_Dim_RentWay.RentWayID,
   DW_Dim_DecorationType.DecorationTypeID,
   DW_Dim_FloorSection.FloorSectionID,
   DW_Dim_Region.RegionID,
   DW_Dim_IsUnderGround.IsUnderGroundID,
   DW_Dim_RentSection.RentSectionID,
   ZFID,
   Money,
   Amount   
)
USE [ZFBI_Study_DW]
GO
SELECT
    DW_Dim_RoomType.RoomTypeID,
    DW_Dim_RentWay.RentWayID,
    DW_Dim_DecorationType.DecorationTypeID,
    DW_Dim_FloorSection.FloorSectionID,
    DW_Dim_Region.RegionID,
    DW_Dim_IsUnderGround.IsUnderGroundID,
    DW_Dim_RentSection.RentSectionID
FROM
   DW_Dim_RoomType, DW_Dim_RentWay, DW_Dim_DecorationType, DW_Dim_FloorSection, DW_Dim_Region, DW_Dim_IsUnderGround, DW_Dim_RentSection, DW_Fact_ZF_AllDate_GZ
WHERE
   DW_Dim_RoomType.RoomTypeID = DW_Fact_ZF_AllDate_GZ.RoomTypeID AND 
   DW_Dim_RentWay.RentWayID = DW_Fact_ZF_AllDate_GZ.RentWayID AND 
   DW_Dim_DecorationType.DecorationTypeID = DW_Fact_ZF_AllDate_GZ.DecorationTypeID AND 
   DW_Dim_FloorSection.FloorSectionID = DW_Fact_ZF_AllDate_GZ.FloorSectionID AND 
   DW_Dim_Region.RegionID = DW_Fact_ZF_AllDate_GZ.RegionID AND 
   DW_Dim_IsUnderGround.IsUnderGroundID = DW_Fact_ZF_AllDate_GZ.IsUnderGroundID AND 
   DW_Dim_RentSection.RentSectionID = DW_Fact_ZF_AllDate_GZ.RentSectionID
GO