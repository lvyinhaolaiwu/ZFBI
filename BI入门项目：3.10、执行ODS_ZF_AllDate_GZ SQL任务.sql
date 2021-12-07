insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([情况简写],charindex('|',[情况简写])-1)as varchar(10)
) 
AS 房间类型
,
CAST(
   left(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )-1
   )
   as varchar(10)
) AS 出租方式
,   
cast(
   left(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )-1
   )
   as varchar(10)
   )as 装修类型
   ,
   cast(
   right(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   len(  substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ))-
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )
   ) as varchar(10)
   )as 楼层
   ,
CAST(a.[具体位置] as varchar(255)) AS 具体位置
   ,
   cast(
left(
[位置区域],
case when charindex('-',[位置区域])-1 >=0 THEN charindex('-',[位置区域])-1
else len([位置区域])
end
) as varchar(50)
)as 区县
,
cast(
right(
[位置区域],
len([位置区域])-case when charindex('-',[位置区域])>0  then charindex('-',[位置区域]) else len([位置区域]) end
) as varchar(50)
)as 区域
,
CAST ([位置道路] as varchar(255)) AS 位置道路
,
cast(
left([房东],charindex('|',[房东])-1)
as varchar(10)
)as 房东
,
cast(
case when 
right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
) ='' then '不是地铁房'else right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
)end
as varchar(10)
)as 是否地铁
,
--top 3
cast(
left([月租],charindex('元',[月租])-1)
as varchar(10)
)as 月租
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_从化区] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_从化区_JW] as b
on a.[ZFID] = b.[ZFID] and a.[具体位置] = b.[具体位置]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([情况简写],charindex('|',[情况简写])-1)as varchar(10)
) 
AS 房间类型
,
CAST(
   left(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )-1
   )
   as varchar(10)
) AS 出租方式
,   
cast(
   left(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )-1
   )
   as varchar(10)
   )as 装修类型
   ,
   cast(
   right(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   len(  substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ))-
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )
   ) as varchar(10)
   )as 楼层
   ,
CAST(a.[具体位置] as varchar(255)) AS 具体位置
   ,
   cast(
left(
[位置区域],
case when charindex('-',[位置区域])-1 >=0 THEN charindex('-',[位置区域])-1
else len([位置区域])
end
) as varchar(50)
)as 区县
,
cast(
right(
[位置区域],
len([位置区域])-case when charindex('-',[位置区域])>0  then charindex('-',[位置区域]) else len([位置区域]) end
) as varchar(50)
)as 区域
,
CAST ([位置道路] as varchar(255)) AS 位置道路
,
cast(
left([房东],charindex('|',[房东])-1)
as varchar(10)
)as 房东
,
cast(
case when 
right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
) ='' then '不是地铁房'else right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
)end
as varchar(10)
)as 是否地铁
,
--top 3
cast(
left([月租],charindex('元',[月租])-1)
as varchar(10)
)as 月租
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_白云区] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_白云区_JW] as b
on a.[ZFID] = b.[ZFID] and a.[具体位置] = b.[具体位置]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([情况简写],charindex('|',[情况简写])-1)as varchar(10)
) 
AS 房间类型
,
CAST(
   left(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )-1
   )
   as varchar(10)
) AS 出租方式
,   
cast(
   left(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )-1
   )
   as varchar(10)
   )as 装修类型
   ,
   cast(
   right(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   len(  substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ))-
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )
   ) as varchar(10)
   )as 楼层
   ,
CAST(a.[具体位置] as varchar(255)) AS 具体位置
   ,
   cast(
left(
[位置区域],
case when charindex('-',[位置区域])-1 >=0 THEN charindex('-',[位置区域])-1
else len([位置区域])
end
) as varchar(50)
)as 区县
,
cast(
right(
[位置区域],
len([位置区域])-case when charindex('-',[位置区域])>0  then charindex('-',[位置区域]) else len([位置区域]) end
) as varchar(50)
)as 区域
,
CAST ([位置道路] as varchar(255)) AS 位置道路
,
cast(
left([房东],charindex('|',[房东])-1)
as varchar(10)
)as 房东
,
cast(
case when 
right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
) ='' then '不是地铁房'else right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
)end
as varchar(10)
)as 是否地铁
,
--top 3
cast(
left([月租],charindex('元',[月租])-1)
as varchar(10)
)as 月租
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_增城区] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_增城区_JW] as b
on a.[ZFID] = b.[ZFID] and a.[具体位置] = b.[具体位置]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([情况简写],charindex('|',[情况简写])-1)as varchar(10)
) 
AS 房间类型
,
CAST(
   left(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )-1
   )
   as varchar(10)
) AS 出租方式
,   
cast(
   left(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )-1
   )
   as varchar(10)
   )as 装修类型
   ,
   cast(
   right(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   len(  substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ))-
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )
   ) as varchar(10)
   )as 楼层
   ,
CAST(a.[具体位置] as varchar(255)) AS 具体位置
   ,
   cast(
left(
[位置区域],
case when charindex('-',[位置区域])-1 >=0 THEN charindex('-',[位置区域])-1
else len([位置区域])
end
) as varchar(50)
)as 区县
,
cast(
right(
[位置区域],
len([位置区域])-case when charindex('-',[位置区域])>0  then charindex('-',[位置区域]) else len([位置区域]) end
) as varchar(50)
)as 区域
,
CAST ([位置道路] as varchar(255)) AS 位置道路
,
cast(
left([房东],charindex('|',[房东])-1)
as varchar(10)
)as 房东
,
cast(
case when 
right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
) ='' then '不是地铁房'else right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
)end
as varchar(10)
)as 是否地铁
,
--top 3
cast(
left([月租],charindex('元',[月租])-1)
as varchar(10)
)as 月租
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_花都区] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_花都区_JW] as b
on a.[ZFID] = b.[ZFID] and a.[具体位置] = b.[具体位置]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([情况简写],charindex('|',[情况简写])-1)as varchar(10)
) 
AS 房间类型
,
CAST(
   left(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )-1
   )
   as varchar(10)
) AS 出租方式
,   
cast(
   left(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )-1
   )
   as varchar(10)
   )as 装修类型
   ,
   cast(
   right(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   len(  substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ))-
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )
   ) as varchar(10)
   )as 楼层
   ,
CAST(a.[具体位置] as varchar(255)) AS 具体位置
   ,
   cast(
left(
[位置区域],
case when charindex('-',[位置区域])-1 >=0 THEN charindex('-',[位置区域])-1
else len([位置区域])
end
) as varchar(50)
)as 区县
,
cast(
right(
[位置区域],
len([位置区域])-case when charindex('-',[位置区域])>0  then charindex('-',[位置区域]) else len([位置区域]) end
) as varchar(50)
)as 区域
,
CAST ([位置道路] as varchar(255)) AS 位置道路
,
cast(
left([房东],charindex('|',[房东])-1)
as varchar(10)
)as 房东
,
cast(
case when 
right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
) ='' then '不是地铁房'else right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
)end
as varchar(10)
)as 是否地铁
,
--top 3
cast(
left([月租],charindex('元',[月租])-1)
as varchar(10)
)as 月租
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_荔湾区] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_荔湾区_JW] as b
on a.[ZFID] = b.[ZFID] and a.[具体位置] = b.[具体位置]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([情况简写],charindex('|',[情况简写])-1)as varchar(10)
) 
AS 房间类型
,
CAST(
   left(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )-1
   )
   as varchar(10)
) AS 出租方式
,   
cast(
   left(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )-1
   )
   as varchar(10)
   )as 装修类型
   ,
   cast(
   right(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   len(  substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ))-
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )
   ) as varchar(10)
   )as 楼层
   ,
CAST(a.[具体位置] as varchar(255)) AS 具体位置
   ,
   cast(
left(
[位置区域],
case when charindex('-',[位置区域])-1 >=0 THEN charindex('-',[位置区域])-1
else len([位置区域])
end
) as varchar(50)
)as 区县
,
cast(
right(
[位置区域],
len([位置区域])-case when charindex('-',[位置区域])>0  then charindex('-',[位置区域]) else len([位置区域]) end
) as varchar(50)
)as 区域
,
CAST ([位置道路] as varchar(255)) AS 位置道路
,
cast(
left([房东],charindex('|',[房东])-1)
as varchar(10)
)as 房东
,
cast(
case when 
right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
) ='' then '不是地铁房'else right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
)end
as varchar(10)
)as 是否地铁
,
--top 3
cast(
left([月租],charindex('元',[月租])-1)
as varchar(10)
)as 月租
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_越秀区] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_越秀区_JW] as b
on a.[ZFID] = b.[ZFID] and a.[具体位置] = b.[具体位置]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([情况简写],charindex('|',[情况简写])-1)as varchar(10)
) 
AS 房间类型
,
CAST(
   left(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )-1
   )
   as varchar(10)
) AS 出租方式
,   
cast(
   left(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )-1
   )
   as varchar(10)
   )as 装修类型
   ,
   cast(
   right(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   len(  substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ))-
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )
   ) as varchar(10)
   )as 楼层
   ,
CAST(a.[具体位置] as varchar(255)) AS 具体位置
   ,
   cast(
left(
[位置区域],
case when charindex('-',[位置区域])-1 >=0 THEN charindex('-',[位置区域])-1
else len([位置区域])
end
) as varchar(50)
)as 区县
,
cast(
right(
[位置区域],
len([位置区域])-case when charindex('-',[位置区域])>0  then charindex('-',[位置区域]) else len([位置区域]) end
) as varchar(50)
)as 区域
,
CAST ([位置道路] as varchar(255)) AS 位置道路
,
cast(
left([房东],charindex('|',[房东])-1)
as varchar(10)
)as 房东
,
cast(
case when 
right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
) ='' then '不是地铁房'else right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
)end
as varchar(10)
)as 是否地铁
,
--top 3
cast(
left([月租],charindex('元',[月租])-1)
as varchar(10)
)as 月租
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_萝岗区] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_萝岗区_JW] as b
on a.[ZFID] = b.[ZFID] and a.[具体位置] = b.[具体位置]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([情况简写],charindex('|',[情况简写])-1)as varchar(10)
) 
AS 房间类型
,
CAST(
   left(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )-1
   )
   as varchar(10)
) AS 出租方式
,   
cast(
   left(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )-1
   )
   as varchar(10)
   )as 装修类型
   ,
   cast(
   right(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   len(  substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ))-
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )
   ) as varchar(10)
   )as 楼层
   ,
CAST(a.[具体位置] as varchar(255)) AS 具体位置
   ,
   cast(
left(
[位置区域],
case when charindex('-',[位置区域])-1 >=0 THEN charindex('-',[位置区域])-1
else len([位置区域])
end
) as varchar(50)
)as 区县
,
cast(
right(
[位置区域],
len([位置区域])-case when charindex('-',[位置区域])>0  then charindex('-',[位置区域]) else len([位置区域]) end
) as varchar(50)
)as 区域
,
CAST ([位置道路] as varchar(255)) AS 位置道路
,
cast(
left([房东],charindex('|',[房东])-1)
as varchar(10)
)as 房东
,
cast(
case when 
right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
) ='' then '不是地铁房'else right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
)end
as varchar(10)
)as 是否地铁
,
--top 3
cast(
left([月租],charindex('元',[月租])-1)
as varchar(10)
)as 月租
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_黄埔区] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_黄埔区_JW] as b
on a.[ZFID] = b.[ZFID] and a.[具体位置] = b.[具体位置]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([情况简写],charindex('|',[情况简写])-1)as varchar(10)
) 
AS 房间类型
,
CAST(
   left(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )-1
   )
   as varchar(10)
) AS 出租方式
,   
cast(
   left(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )-1
   )
   as varchar(10)
   )as 装修类型
   ,
   cast(
   right(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   len(  substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ))-
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )
   ) as varchar(10)
   )as 楼层
   ,
CAST(a.[具体位置] as varchar(255)) AS 具体位置
   ,
   cast(
left(
[位置区域],
case when charindex('-',[位置区域])-1 >=0 THEN charindex('-',[位置区域])-1
else len([位置区域])
end
) as varchar(50)
)as 区县
,
cast(
right(
[位置区域],
len([位置区域])-case when charindex('-',[位置区域])>0  then charindex('-',[位置区域]) else len([位置区域]) end
) as varchar(50)
)as 区域
,
CAST ([位置道路] as varchar(255)) AS 位置道路
,
cast(
left([房东],charindex('|',[房东])-1)
as varchar(10)
)as 房东
,
cast(
case when 
right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
) ='' then '不是地铁房'else right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
)end
as varchar(10)
)as 是否地铁
,
--top 3
cast(
left([月租],charindex('元',[月租])-1)
as varchar(10)
)as 月租
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_天河区] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_天河区_JW] as b
on a.[ZFID] = b.[ZFID] and a.[具体位置] = b.[具体位置]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([情况简写],charindex('|',[情况简写])-1)as varchar(10)
) 
AS 房间类型
,
CAST(
   left(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )-1
   )
   as varchar(10)
) AS 出租方式
,   
cast(
   left(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )-1
   )
   as varchar(10)
   )as 装修类型
   ,
   cast(
   right(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   len(  substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ))-
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )
   ) as varchar(10)
   )as 楼层
   ,
CAST(a.[具体位置] as varchar(255)) AS 具体位置
   ,
   cast(
left(
[位置区域],
case when charindex('-',[位置区域])-1 >=0 THEN charindex('-',[位置区域])-1
else len([位置区域])
end
) as varchar(50)
)as 区县
,
cast(
right(
[位置区域],
len([位置区域])-case when charindex('-',[位置区域])>0  then charindex('-',[位置区域]) else len([位置区域]) end
) as varchar(50)
)as 区域
,
CAST ([位置道路] as varchar(255)) AS 位置道路
,
cast(
left([房东],charindex('|',[房东])-1)
as varchar(10)
)as 房东
,
cast(
case when 
right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
) ='' then '不是地铁房'else right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
)end
as varchar(10)
)as 是否地铁
,
--top 3
cast(
left([月租],charindex('元',[月租])-1)
as varchar(10)
)as 月租
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_海珠区] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_海珠区_JW] as b
on a.[ZFID] = b.[ZFID] and a.[具体位置] = b.[具体位置]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([情况简写],charindex('|',[情况简写])-1)as varchar(10)
) 
AS 房间类型
,
CAST(
   left(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )-1
   )
   as varchar(10)
) AS 出租方式
,   
cast(
   left(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )-1
   )
   as varchar(10)
   )as 装修类型
   ,
   cast(
   right(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   len(  substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ))-
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )
   ) as varchar(10)
   )as 楼层
   ,
CAST(a.[具体位置] as varchar(255)) AS 具体位置
   ,
   cast(
left(
[位置区域],
case when charindex('-',[位置区域])-1 >=0 THEN charindex('-',[位置区域])-1
else len([位置区域])
end
) as varchar(50)
)as 区县
,
cast(
right(
[位置区域],
len([位置区域])-case when charindex('-',[位置区域])>0  then charindex('-',[位置区域]) else len([位置区域]) end
) as varchar(50)
)as 区域
,
CAST ([位置道路] as varchar(255)) AS 位置道路
,
cast(
left([房东],charindex('|',[房东])-1)
as varchar(10)
)as 房东
,
cast(
case when 
right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
) ='' then '不是地铁房'else right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
)end
as varchar(10)
)as 是否地铁
,
--top 3
cast(
left([月租],charindex('元',[月租])-1)
as varchar(10)
)as 月租
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_番禺区] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_番禺区_JW] as b
on a.[ZFID] = b.[ZFID] and a.[具体位置] = b.[具体位置]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([情况简写],charindex('|',[情况简写])-1)as varchar(10)
) 
AS 房间类型
,
CAST(
   left(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )-1
   )
   as varchar(10)
) AS 出租方式
,   
cast(
   left(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )-1
   )
   as varchar(10)
   )as 装修类型
   ,
   cast(
   right(
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ),
   len(  substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   ))-
   charindex('|',
   substring(
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])),
   charindex
   (
   '|',
   substring([情况简写],charindex('|',[情况简写])+1,len([情况简写]))
   )+1,
   len(substring([情况简写],charindex('|',[情况简写])+1,len([情况简写])))
   )
   )
   ) as varchar(10)
   )as 楼层
   ,
CAST(a.[具体位置] as varchar(255)) AS 具体位置
   ,
   cast(
left(
[位置区域],
case when charindex('-',[位置区域])-1 >=0 THEN charindex('-',[位置区域])-1
else len([位置区域])
end
) as varchar(50)
)as 区县
,
cast(
right(
[位置区域],
len([位置区域])-case when charindex('-',[位置区域])>0  then charindex('-',[位置区域]) else len([位置区域]) end
) as varchar(50)
)as 区域
,
CAST ([位置道路] as varchar(255)) AS 位置道路
,
cast(
left([房东],charindex('|',[房东])-1)
as varchar(10)
)as 房东
,
cast(
case when 
right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
) ='' then '不是地铁房'else right(
[房东],
len([房东])-case when charindex('|',[房东])>0  then charindex('|',[房东]) else len([房东]) end
)end
as varchar(10)
)as 是否地铁
,
--top 3
cast(
left([月租],charindex('元',[月租])-1)
as varchar(10)
)as 月租
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_南沙区] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_南沙区_JW] as b
on a.[ZFID] = b.[ZFID] and a.[具体位置] = b.[具体位置]
;