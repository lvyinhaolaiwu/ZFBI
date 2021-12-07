select * from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] order by ZFID;
select * from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_RoomType];
select * from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b;
select a.[ZFID],a.[房间类型],a.[出租方式],a.[装修类型],a.[楼层],left(a.[楼层],charindex('/',a.[楼层])-1) as 开始层,substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) as 结束层,a.[具体位置],a.[区县],a.[区域],a.[位置道路],a.[房东],a.[是否地铁],a.[月租] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] as a ;
select a.[ZFID],a.[房间类型],a.[出租方式],a.[装修类型],a.[楼层],left(a.[楼层],charindex('/',a.[楼层])-1) as 开始层,substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) as 结束层,a.[具体位置],a.[区县],a.[区域],a.[位置道路],a.[房东],a.[是否地铁],a.[月租],b.num from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on CAST(b.num AS int)>=CAST(left(a.[楼层],charindex('/',a.[楼层])-1) AS int) and CAST(b.num AS int)<=CAST(substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) AS int) order by b.num;
select a.[ZFID],a.[房间类型],a.[出租方式],a.[装修类型],a.[楼层],left(a.[楼层],charindex('/',a.[楼层])-1) as 开始层,substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) as 结束层,a.[具体位置],a.[区县],a.[区域],a.[位置道路],a.[房东],a.[是否地铁],a.[月租],b.num from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on CONVERT(int,b.num )>=CONVERT(int,left(a.[楼层],charindex('/',a.[楼层])-1)) and CONVERT(int,b.num)<=CONVERT(int,substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1)) order by b.num;
select * from (select [ZFID],[房间类型],[出租方式],[装修类型],[楼层],left([楼层],charindex('/',[楼层])-1) as 开始层,substring([楼层],charindex('/',[楼层])+1,len([楼层])-charindex('/',[楼层])-1) as 结束层,[具体位置],[区县],[区域],[位置道路],[房东],[是否地铁],[月租] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] )as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on b.num  BETWEEN a.开始层 AND a.结束层;
select * from (select [ZFID],[房间类型],[出租方式],[装修类型],[楼层],left([楼层],charindex('/',[楼层])-1) as 开始层,substring([楼层],charindex('/',[楼层])+1,len([楼层])-charindex('/',[楼层])-1) as 结束层,[具体位置],[区县],[区域],[位置道路],[房东],[是否地铁],[月租] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] )as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on CONVERT(int,b.num ) BETWEEN a.开始层 AND a.结束层;
select * from (select [ZFID],[房间类型],[出租方式],[装修类型],[楼层],left([楼层],charindex('/',[楼层])-1) as 开始层,substring([楼层],charindex('/',[楼层])+1,len([楼层])-charindex('/',[楼层])-1) as 结束层,[具体位置],[区县],[区域],[位置道路],[房东],[是否地铁],[月租] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] )as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on CONVERT(int,b.num ) BETWEEN CAST(a.开始层 AS int) AND CAST(a.结束层 as int);
select * from (select [ZFID],[房间类型],[出租方式],[装修类型],[楼层],CAST(left([楼层],charindex('/',[楼层])-1) as int ) as 开始层,CAST(substring([楼层],charindex('/',[楼层])+1,len([楼层])-charindex('/',[楼层])-1)AS int) as 结束层,[具体位置],[区县],[区域],[位置道路],[房东],[是否地铁],[月租] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] )as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on b.num  BETWEEN CAST(a.开始层 AS int) AND CAST(a.结束层 AS int);
select * from (select [ZFID],[房间类型],[出租方式],[装修类型],[楼层],left([楼层],charindex('/',[楼层])-1) as 开始层,substring([楼层],charindex('/',[楼层])+1,len([楼层])-charindex('/',[楼层])-1) as 结束层,[具体位置],[区县],[区域],[位置道路],[房东],[是否地铁],[月租] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] )as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on b.num  >= a.开始层 AND b.num <= a.结束层;
select * from (select [ZFID],[房间类型],[出租方式],[装修类型],[楼层],left([楼层],charindex('/',[楼层])-1) as 开始层,substring([楼层],charindex('/',[楼层])+1,len([楼层])-charindex('/',[楼层])-1) as 结束层,[具体位置],[区县],[区域],[位置道路],[房东],[是否地铁],[月租] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] )as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on CONVERT(int,b.num ) >=a.开始层 AND CONVERT(int,b.num )<=  a.结束层;
select * from (select [ZFID],[房间类型],[出租方式],[装修类型],[楼层],left([楼层],charindex('/',[楼层])-1) as 开始层,substring([楼层],charindex('/',[楼层])+1,len([楼层])-charindex('/',[楼层])-1) as 结束层,[具体位置],[区县],[区域],[位置道路],[房东],[是否地铁],[月租] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] )as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on CONVERT(int,b.num ) >= CAST(a.开始层 AS int) AND CONVERT(int,b.num )<=CAST(a.结束层 as int);
select * from (select [ZFID],[房间类型],[出租方式],[装修类型],[楼层],CAST(left([楼层],charindex('/',[楼层])-1) as int ) as 开始层,CAST(substring([楼层],charindex('/',[楼层])+1,len([楼层])-charindex('/',[楼层])-1)AS int) as 结束层,[具体位置],[区县],[区域],[位置道路],[房东],[是否地铁],[月租] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] )as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on b.num  >= CAST(a.开始层 AS int) AND b.num<= CAST(a.结束层 AS int);
--select * from (select * from (select [ZFID],[房间类型],[出租方式],[装修类型],[楼层],left([楼层],charindex('/',[楼层])-1) as 开始层,substring([楼层],charindex('/',[楼层])+1,len([楼层])-charindex('/',[楼层])-1) as 结束层,[具体位置],[区县],[区域],[位置道路],[房东],[是否地铁],[月租] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] )as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on CAST(b.num AS int) >= CAST(a.开始层 AS int) AND CAST(b.num AS int)<=CAST(a.结束层 as int)) as a
--select a.[ZFID],b.[RoomTypeID],c.[RentWayID],d.[DecorationTypeID],e.[FloorSectionID],f.[RegionID],g.[IsUnderGroundID],h.[RentSectionID],1 as Amount,a.[月租] as Money from (select * from (select [ZFID],[房间类型],[出租方式],[装修类型],[楼层],left([楼层],charindex('/',[楼层])-1) as 开始层,substring([楼层],charindex('/',[楼层])+1,len([楼层])-charindex('/',[楼层])-1) as 结束层,[具体位置],[区县],[区域],[位置道路],[房东],[是否地铁],[月租] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] )as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on CAST(b.num AS int) >= CAST(a.开始层 AS int) AND CAST(b.num AS int)<=CAST(a.结束层 as int)) as a
--select a.[ZFID],b.[RoomTypeID],c.[RentWayID],d.[DecorationTypeID],e.[FloorSectionID],f.[RegionID],g.[IsUnderGroundID],h.[RentSectionID],1 as Amount,a.[月租] as Money from (select * from (select [ZFID],[房间类型],[出租方式],[装修类型],[楼层],left([楼层],charindex('/',[楼层])-1) as 开始层,substring([楼层],charindex('/',[楼层])+1,len([楼层])-charindex('/',[楼层])-1) as 结束层,[具体位置],[区县],[区域],[位置道路],[房东],[是否地铁],[月租] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] )as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on CAST(b.num AS int) >= CAST(a.开始层 AS int) AND CAST(b.num AS int)<=CAST(a.结束层 as int)) as a
--select a.[ZFID],b.[RoomTypeID],c.[RentWayID],d.[DecorationTypeID],e.[FloorSectionID],f.[RegionID],g.[IsUnderGroundID],h.[RentSectionID],1 as Amount,a.[月租] as Money from (select * from (select [ZFID],[房间类型],[出租方式],[装修类型],[楼层],left([楼层],charindex('/',[楼层])-1) as 开始层,substring([楼层],charindex('/',[楼层])+1,len([楼层])-charindex('/',[楼层])-1) as 结束层,[具体位置],[区县],[区域],[位置道路],[房东],[是否地铁],[月租] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] )as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on CONVERT(int,b.num ) >= CONVERT(int,a.开始层) AND CONVERT(int,b.num )<=CONVERT(int,a.结束层)) as a
--select a.[ZFID],b.[RoomTypeID],c.[RentWayID],d.[DecorationTypeID],e.[FloorSectionID],f.[RegionID],g.[IsUnderGroundID],h.[RentSectionID],1 as Amount,a.[月租] as Money from (select * from (select [ZFID],[房间类型],[出租方式],[装修类型],[楼层],left([楼层],charindex('/',[楼层])-1) as 开始层,substring([楼层],charindex('/',[楼层])+1,len([楼层])-charindex('/',[楼层])-1) as 结束层,[具体位置],[区县],[区域],[位置道路],[房东],[是否地铁],[月租] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] )as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on CONVERT(int,b.num )  BETWEEN  CONVERT(int,a.开始层) AND CONVERT(int,a.结束层)) as a
--select a.[ZFID],b.[RoomTypeID],c.[RentWayID],d.[DecorationTypeID],e.[FloorSectionID],f.[RegionID],g.[IsUnderGroundID],h.[RentSectionID],1 as Amount,a.[月租] as Money from (select * from (select [ZFID],[房间类型],[出租方式],[装修类型],[楼层],left([楼层],charindex('/',[楼层])-1) as 开始层,substring([楼层],charindex('/',[楼层])+1,len([楼层])-charindex('/',[楼层])-1) as 结束层,[具体位置],[区县],[区域],[位置道路],[房东],[是否地铁],[月租] from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] )as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on CAST(b.num as int)  BETWEEN  CAST(a.开始层 as int) AND CAST(a.结束层 AS int)) as a
select a.[ZFID],b.[RoomTypeID],c.[RentWayID],d.[DecorationTypeID],e.[FloorSectionID],f.[RegionID],g.[IsUnderGroundID],h.[RentSectionID],CAST(1 AS numeric(18,2)) as Amount,CAST(a.[月租] AS float) as Money from (select a.[ZFID] ,a.[房间类型] ,a.[出租方式],a.[装修类型],a.[楼层] ,left(a.[楼层],charindex('/',a.[楼层])-1) as 开始层,substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) as 结束层,a.[具体位置],a.[区县],a.[区域] ,a.[位置道路] ,a.[房东] ,a.[是否地铁] ,a.[月租],b.num from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on CAST(b.num AS int)>=CAST(left(a.[楼层],charindex('/',a.[楼层])-1) AS int) and CAST(b.num AS int)<=CAST(substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) AS int) )as a 
--select * from (select a.[ZFID] ,a.[房间类型] ,a.[出租方式],a.[装修类型],a.[楼层] ,left(a.[楼层],charindex('/',a.[楼层])-1) as 开始层,substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) as 结束层,a.[具体位置],a.[区县],a.[区域] ,a.[位置道路] ,a.[房东] ,a.[是否地铁] ,a.[月租],b.num from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] as a right join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[TempNum] as b on CAST(b.num AS int)>=CAST(left(a.[楼层],charindex('/',a.[楼层])-1) AS int) and CAST(b.num AS int)<=CAST(substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) AS int) )as a 
--select a.[ZFID],b.[RoomTypeID],c.[RentWayID],d.[DecorationTypeID],e.[FloorSectionID] ,f.[RegionID],g.[IsUnderGroundID],h.[RentSectionID],CONVERT(numeric(18,2),substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1))-CONVERT(numeric(18,2),left(a.[楼层],charindex('/',a.[楼层])-1))+1 as Amount,CONVERT(float,a.[月租])*(CONVERT(numeric(18,2),substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1))-CONVERT(numeric(18,2),left(a.[楼层],charindex('/',a.[楼层])-1))+1) as Money from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] as a
--select a.[ZFID],b.[RoomTypeID],c.[RentWayID],d.[DecorationTypeID],e.[FloorSectionID],f.[RegionID],g.[IsUnderGroundID],h.[RentSectionID],CAST(substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) as numeric(18,2))-CAST(left(a.[楼层],charindex('/',a.[楼层])-1) as numeric(18,2))+1 as Amount,CAST(a.[月租] AS float)*(CAST(substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) as numeric(18,2))-CAST(left(a.[楼层],charindex('/',a.[楼层])-1) as numeric(18,2))+1 ) as Money from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] as a 
--select a.[ZFID],b.[RoomTypeID],c.[RentWayID],d.[DecorationTypeID],e.[FloorSectionID],f.[RegionID],g.[IsUnderGroundID],h.[RentSectionID],CONVERT(numeric(18,2),substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1))-CONVERT(numeric(18,2),left(a.[楼层],charindex('/',a.[楼层])-1))+1 as Amount,CONVERT(float,a.[月租])*(CONVERT(numeric(18,2),substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1))-CONVERT(numeric(18,2),left(a.[楼层],charindex('/',a.[楼层])-1))+1) as Money from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] as a
--select a.[ZFID],b.[RoomTypeID],c.[RentWayID],d.[DecorationTypeID], e.[FloorSectionID],f.[RegionID],g.[IsUnderGroundID],h.[RentSectionID],CAST(substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) as numeric(18,2))-CAST(left(a.[楼层],charindex('/',a.[楼层])-1) as numeric(18,2))+1 as Amount,CAST(a.[月租] AS float)*(CAST(substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) as numeric(18,2))-CAST(left(a.[楼层],charindex('/',a.[楼层])-1) as numeric(18,2))+1 ) as Money from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] as a 
--select a.[ZFID],b.[RoomTypeID],c.[RentWayID],d.[DecorationTypeID],e.[FloorSectionID],f.[RegionID],g.[IsUnderGroundID],h.[RentSectionID],1 as Amount,CAST(a.[月租] AS float) as Money from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] as a 
--select * from [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ] as a
left join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_RoomType] as b on a.[房间类型]=b.[RoomTypeName]
left join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_RentWay] as c on a.[出租方式]=c.[RentWayName]
left join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_DecorationType] as d on a.[装修类型]=d.[DecorationTypeName]
--left join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection] as e on CAST(left(a.[楼层],charindex('/',a.[楼层])-1) as int) >=e.[Minimum] and CAST(substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) as int)<=e.[Maximum]
--left join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection] as e on CAST(left(a.[楼层],charindex('/',a.[楼层])-1) as int) >=e.[Minimum] and CAST(left(a.[楼层],charindex('/',a.[楼层])-1) as int)<=e.[Maximum]
--left join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection] as e on CONVERT(int,left(a.[楼层],charindex('/',a.[楼层])-1) ) >=e.[Minimum] and CONVERT(int,substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) )<=e.[Maximum]
--left join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection] as e on CONVERT(int,left(a.[楼层],charindex('/',a.[楼层])-1) ) >=e.[Minimum] and CONVERT(int,left(a.[楼层],charindex('/',a.[楼层])-1) )<=e.[Maximum]
--left join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection] as e on CAST(substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) as int)-CAST(left(a.[楼层],charindex('/',a.[楼层])-1) as int)+1 >=e.[Minimum] and CAST(substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1) as int)-CAST(left(a.[楼层],charindex('/',a.[楼层])-1) as int)+1 <=e.[Maximum]
--left join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection] as e on CONVERT(int,substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1))-CONVERT(int,left(a.[楼层],charindex('/',a.[楼层])-1))+1 >=e.[Minimum] and CONVERT(int,substring(a.[楼层],charindex('/',a.[楼层])+1,len(a.[楼层])-charindex('/',a.[楼层])-1))-CONVERT(int,left(a.[楼层],charindex('/',a.[楼层])-1))+1 <=e.[Maximum]
--left join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection] as e on CAST(a.num AS int)>=e.[Minimum] and CAST(a.num AS int)<=e.[Maximum]
left join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection] as e on CONVERT(int,a.num)>=e.[Minimum] and CONVERT(int,a.num)<=e.[Maximum]
left join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_Region] as f on a.[区县]= f.[CountyCity] and a.[区域]=f.[Region] and a.[位置道路] = f.[Location]
left join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_IsUnderGround] as g on a.[是否地铁]= g.[IsUnderGroundName]
--left join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_RentSection] as h on CAST(a.[月租] AS int) >= h.[Minimum] and CAST(a.[月租] as int)<=h.[Maximum]
left join [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_RentSection] as h on CONVERT(int,a.[月租]) >= h.[Minimum] and CONVERT(int,a.[月租])<=h.[Maximum]
--where a.[ZFID]=1884
;

SELECT 'alter table NOCHECK CONSTRAINT ['+name+']' from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].sysobjects where name = 'DW_Dim_FloorSection';
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] NOCHECK CONSTRAINT ALL;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] CHECK CONSTRAINT ALL;
alter table [ZFBI_Study_DW].[dbo].[DW_Dim_RoomType] NOCHECK CONSTRAINT ALL;
alter table [ZFBI_Study_DW].[dbo].[DW_Dim_RoomType] CHECK CONSTRAINT ALL;
truncate table [ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection];
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] drop constraint FK_Fact_ZF_FloorSection;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] NOCHECK constraint FK_Fact_ZF_FloorSection;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] CHECK constraint FK_Fact_ZF_FloorSection;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] with CHECK CHECK constraint FK_Fact_ZF_FloorSection;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] add constraint FK_Fact_ZF_FloorSection foreign key ([FloorSectionID]) references [ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection] ([FloorSectionID]);
delete from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection];
select * from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection];
dbcc checkident('[ZFBI_Study_DW].[dbo].[DW_Dim_FloorSection]',reseed,0);
truncate table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ];
delete from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ];
select * from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ];
select * from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] where RentSectionID = 12;
select * from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] where FloorSectionID = 12;
delete from  [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] where RentSectionID = 12;
truncate table [ZFBI_Study_DW].[dbo].[DW_Dim_RoomType];
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] drop  constraint FK_Fact_ZF_RoomType;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] NOCHECK  constraint FK_Fact_ZF_RoomType;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] CHECK  constraint FK_Fact_ZF_RoomType;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] add  constraint FK_Fact_ZF_RoomType foreign key ([RoomTypeID]) references [ZFBI_Study_DW].[dbo].[DW_Dim_RoomType]([RoomTypeID]);
delete from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_RoomType];
select * from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_RoomType];
dbcc checkident('[ZFBI_Study_DW].[dbo].[DW_Dim_RoomType]',reseed,0);
truncate table [ZFBI_Study_DW].[dbo].[DW_Dim_RentWay];
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] drop constraint FK_Fact_ZF_RentWay;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] NOCHECK constraint FK_Fact_ZF_RentWay;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] CHECK  constraint FK_Fact_ZF_RentWay;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] add constraint FK_Fact_ZF_RentWay foreign key ([RentWayID]) references [ZFBI_Study_DW].[dbo].[DW_Dim_RentWay] ([RentWayID]);
delete from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_RentWay];
select * from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_RentWay];
dbcc checkident('[ZFBI_Study_DW].[dbo].[DW_Dim_RentWay]',reseed,0);
truncate table [ZFBI_Study_DW].[dbo].[DW_Dim_DecorationType];
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] drop constraint FK_Fact_ZF_DecorationType;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] NOCHECK constraint FK_Fact_ZF_DecorationType;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] CHECK  constraint FK_Fact_ZF_DecorationType;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] add constraint FK_Fact_ZF_DecorationType foreign key ([DecorationTypeID]) references [ZFBI_Study_DW].[dbo].[DW_Dim_DecorationType]([DecorationTypeID]);
delete from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_DecorationType];
select * from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_DecorationType];
dbcc checkident('[ZFBI_Study_DW].[dbo].[DW_Dim_DecorationType]',reseed,0);
truncate table [ZFBI_Study_DW].[dbo].[DW_Dim_Region];
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] drop constraint FK_Fact_ZF_Region;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] NOCHECK constraint FK_Fact_ZF_Region;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] CHECK  constraint FK_Fact_ZF_Region;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] add constraint FK_Fact_ZF_Region foreign key ([RegionID]) references [ZFBI_Study_DW].[dbo].[DW_Dim_Region] ([RegionID]);
delete from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_Region];
select * from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_Region];
dbcc checkident('[ZFBI_Study_DW].[dbo].[DW_Dim_Region]',reseed,0);
truncate table [ZFBI_Study_DW].[dbo].[DW_Dim_IsUnderGround];
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] drop constraint FK_Fact_ZF_IsUnderGround;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] NOCHECK constraint FK_Fact_ZF_IsUnderGround;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] CHECK  constraint FK_Fact_ZF_IsUnderGround;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] add constraint FK_Fact_ZF_IsUnderGround foreign key ([IsUnderGroundID]) references [ZFBI_Study_DW].[dbo].[DW_Dim_IsUnderGround]([IsUnderGroundID]);
delete from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_IsUnderGround];
select * from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_IsUnderGround];
dbcc checkident('[ZFBI_Study_DW].[dbo].[DW_Dim_IsUnderGround]',reseed,0);
truncate table [ZFBI_Study_DW].[dbo].[DW_Dim_RentSection];
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] drop constraint FK_Dim_RentSectionID;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] NOCHECK constraint FK_Dim_RentSectionID;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] CHECK constraint FK_Dim_RentSectionID;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] with CHECK  CHECK constraint FK_Dim_RentSectionID;
alter table [ZFBI_Study_DW].[dbo].[DW_Fact_ZF_AllDate_GZ] add constraint FK_Dim_RentSectionID foreign key (RentSectionID) references [ZFBI_Study_DW].[dbo].[DW_Dim_RentSection](RentSectionID);
delete from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_RentSection];
select * from [DESKTOP-NNRODTU].[ZFBI_Study_DW].[dbo].[DW_Dim_RentSection];
dbcc checkident('[ZFBI_Study_DW].[dbo].[DW_Dim_RentSection]',reseed,0);