select * from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select [��������] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select distinct [��������] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select distinct [��������] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by [��������];
select distinct [��������] as RoomTypeName from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by [��������];
select distinct [��������] as RoomTypeName from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by RoomTypeName;
select count(0) from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_RoomType];
select distinct [���ⷽʽ] as RentWay from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by [���ⷽʽ];
select distinct [���ⷽʽ] as RentWayName from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by RentWayName;
select count(0) from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_RentWay];
select distinct [װ������] as DecorationTypeName from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by [װ������];
select distinct [װ������] as DecorationTypeName from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by DecorationTypeName;
select count(0) from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_DecorationType];
select distinct [¥��] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by [¥��];
select distinct [¥��] as FloorSectionName from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by [¥��];
select distinct [¥��] as FloorSectionName from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by FloorSectionName;
select distinct [¥��] as FloorSectionName ,left([¥��],charindex('/',[¥��])-1) as Minimum ,right([¥��],len([¥��])-charindex('/',[¥��])) as Maximum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by FloorSectionName;
select distinct [¥��] as FloorSectionName ,CAST(left([¥��],charindex('/',[¥��])-1) as int ) as Minimum ,CAST(substring([¥��],charindex('/',[¥��])+1,len([¥��])-charindex('/',[¥��])-1) AS int) as Maximum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by FloorSectionName;
select distinct [¥��] as FloorSectionName ,CONVERT(int,left([¥��],charindex('/',[¥��])-1)) as Minimum ,CONVERT(int,substring([¥��],charindex('/',[¥��])+1,len([¥��])-charindex('/',[¥��])-1)) as Maximum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by FloorSectionName;
select max(CAST(substring([¥��],charindex('/',[¥��])+1,len([¥��])-charindex('/',[¥��])-1) as int)) as MostMaximum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select min(CAST(left([¥��],charindex('/',[¥��])-1) as int )) as MostMinimum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select max(CONVERT(int,substring([¥��],charindex('/',[¥��])+1,len([¥��])-charindex('/',[¥��])-1))) as MostMaximum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select min(CONVERT(int,left([¥��],charindex('/',[¥��])-1))) as MostMinimum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select count(0) from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection];
truncate table [ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection];
delete from [ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection];
dbcc checkident('[ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection]',reseed,0);
select distinct [����] as CountyCity,[����] as Region,[λ�õ�·] as Location from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by [����];
select distinct [����] as CountyCity,[����] as Region,[λ�õ�·] as Location from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by Region;
select count(0) from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_Region];
select distinct [�Ƿ����]  from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by [�Ƿ����];
select distinct [�Ƿ����] as IsUnderGroundName from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by IsUnderGroundName;
select count(0) from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_IsUnderGround];
select distinct [����]  from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by [����];
select max(CAST([����] as int)) as Maximum  from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select min(CAST([����] as int)) as Minimum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select max(CONVERT(int,[����])) as Maximum  from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select min(CONVERT(int,[����])) as Minimum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select max(CONVERT(int,[����],10)) as Maximum  from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select min(CONVERT(int,[����],10)) as Minimum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select min(cast([����] as int)) as Minimum,max(cast([����] as int)) as Maximum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select min(convert(int,[����])) as Minimum,max(convert(int,[����])) as Maximum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select min(convert(int,[����],10)) as Minimum,max(convert(int,[����],10)) as Maximum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];
select cast(min(cast([����] as int)) as varchar(14))+'-'+cast(max(cast([����] as int))as varchar(15)) as RentSectionName,min(cast([����] as int)) as Minimum,max(cast([����] as int)) as Maximum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by RentSectionName;
select cast(min(convert(int,[����])) as varchar(14))+'-'+cast(max(convert(int,[����]))as varchar(15)) as RentSectionName,min(cast([����] as int)) as Minimum,max(cast([����] as int)) as Maximum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by RentSectionName;
select cast(min(convert(int,[����],10)) as varchar(14))+'-'+cast(max(convert(int,[����],10))as varchar(15)) as RentSectionName,min(cast([����] as int)) as Minimum,max(cast([����] as int)) as Maximum from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by RentSectionName;
select count(0) from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_RentSection];
truncate table [ZFBI_Study_DW].[dbo].[DW_Dim_RentSection];
delete from [ZFBI_Study_DW].[dbo].[DW_Dim_RentSection];
dbcc checkident('[ZFBI_Study_DW].[dbo].[DW_Dim_RentSection]',reseed,0);
select count(0) from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_Fact_ZF_AllDate_GZ];
select count(0) from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ];