insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([�����д],charindex('|',[�����д])-1)as varchar(10)
) 
AS ��������
,
CAST(
   left(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )-1
   )
   as varchar(10)
) AS ���ⷽʽ
,   
cast(
   left(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )-1
   )
   as varchar(10)
   )as װ������
   ,
   cast(
   right(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   len(  substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ))-
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )
   ) as varchar(10)
   )as ¥��
   ,
CAST(a.[����λ��] as varchar(255)) AS ����λ��
   ,
   cast(
left(
[λ������],
case when charindex('-',[λ������])-1 >=0 THEN charindex('-',[λ������])-1
else len([λ������])
end
) as varchar(50)
)as ����
,
cast(
right(
[λ������],
len([λ������])-case when charindex('-',[λ������])>0  then charindex('-',[λ������]) else len([λ������]) end
) as varchar(50)
)as ����
,
CAST ([λ�õ�·] as varchar(255)) AS λ�õ�·
,
cast(
left([����],charindex('|',[����])-1)
as varchar(10)
)as ����
,
cast(
case when 
right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
) ='' then '���ǵ�����'else right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
)end
as varchar(10)
)as �Ƿ����
,
--top 3
cast(
left([����],charindex('Ԫ',[����])-1)
as varchar(10)
)as ����
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_�ӻ���] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_�ӻ���_JW] as b
on a.[ZFID] = b.[ZFID] and a.[����λ��] = b.[����λ��]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([�����д],charindex('|',[�����д])-1)as varchar(10)
) 
AS ��������
,
CAST(
   left(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )-1
   )
   as varchar(10)
) AS ���ⷽʽ
,   
cast(
   left(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )-1
   )
   as varchar(10)
   )as װ������
   ,
   cast(
   right(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   len(  substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ))-
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )
   ) as varchar(10)
   )as ¥��
   ,
CAST(a.[����λ��] as varchar(255)) AS ����λ��
   ,
   cast(
left(
[λ������],
case when charindex('-',[λ������])-1 >=0 THEN charindex('-',[λ������])-1
else len([λ������])
end
) as varchar(50)
)as ����
,
cast(
right(
[λ������],
len([λ������])-case when charindex('-',[λ������])>0  then charindex('-',[λ������]) else len([λ������]) end
) as varchar(50)
)as ����
,
CAST ([λ�õ�·] as varchar(255)) AS λ�õ�·
,
cast(
left([����],charindex('|',[����])-1)
as varchar(10)
)as ����
,
cast(
case when 
right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
) ='' then '���ǵ�����'else right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
)end
as varchar(10)
)as �Ƿ����
,
--top 3
cast(
left([����],charindex('Ԫ',[����])-1)
as varchar(10)
)as ����
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_������] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_������_JW] as b
on a.[ZFID] = b.[ZFID] and a.[����λ��] = b.[����λ��]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([�����д],charindex('|',[�����д])-1)as varchar(10)
) 
AS ��������
,
CAST(
   left(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )-1
   )
   as varchar(10)
) AS ���ⷽʽ
,   
cast(
   left(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )-1
   )
   as varchar(10)
   )as װ������
   ,
   cast(
   right(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   len(  substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ))-
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )
   ) as varchar(10)
   )as ¥��
   ,
CAST(a.[����λ��] as varchar(255)) AS ����λ��
   ,
   cast(
left(
[λ������],
case when charindex('-',[λ������])-1 >=0 THEN charindex('-',[λ������])-1
else len([λ������])
end
) as varchar(50)
)as ����
,
cast(
right(
[λ������],
len([λ������])-case when charindex('-',[λ������])>0  then charindex('-',[λ������]) else len([λ������]) end
) as varchar(50)
)as ����
,
CAST ([λ�õ�·] as varchar(255)) AS λ�õ�·
,
cast(
left([����],charindex('|',[����])-1)
as varchar(10)
)as ����
,
cast(
case when 
right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
) ='' then '���ǵ�����'else right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
)end
as varchar(10)
)as �Ƿ����
,
--top 3
cast(
left([����],charindex('Ԫ',[����])-1)
as varchar(10)
)as ����
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_������] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_������_JW] as b
on a.[ZFID] = b.[ZFID] and a.[����λ��] = b.[����λ��]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([�����д],charindex('|',[�����д])-1)as varchar(10)
) 
AS ��������
,
CAST(
   left(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )-1
   )
   as varchar(10)
) AS ���ⷽʽ
,   
cast(
   left(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )-1
   )
   as varchar(10)
   )as װ������
   ,
   cast(
   right(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   len(  substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ))-
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )
   ) as varchar(10)
   )as ¥��
   ,
CAST(a.[����λ��] as varchar(255)) AS ����λ��
   ,
   cast(
left(
[λ������],
case when charindex('-',[λ������])-1 >=0 THEN charindex('-',[λ������])-1
else len([λ������])
end
) as varchar(50)
)as ����
,
cast(
right(
[λ������],
len([λ������])-case when charindex('-',[λ������])>0  then charindex('-',[λ������]) else len([λ������]) end
) as varchar(50)
)as ����
,
CAST ([λ�õ�·] as varchar(255)) AS λ�õ�·
,
cast(
left([����],charindex('|',[����])-1)
as varchar(10)
)as ����
,
cast(
case when 
right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
) ='' then '���ǵ�����'else right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
)end
as varchar(10)
)as �Ƿ����
,
--top 3
cast(
left([����],charindex('Ԫ',[����])-1)
as varchar(10)
)as ����
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_������] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_������_JW] as b
on a.[ZFID] = b.[ZFID] and a.[����λ��] = b.[����λ��]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([�����д],charindex('|',[�����д])-1)as varchar(10)
) 
AS ��������
,
CAST(
   left(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )-1
   )
   as varchar(10)
) AS ���ⷽʽ
,   
cast(
   left(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )-1
   )
   as varchar(10)
   )as װ������
   ,
   cast(
   right(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   len(  substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ))-
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )
   ) as varchar(10)
   )as ¥��
   ,
CAST(a.[����λ��] as varchar(255)) AS ����λ��
   ,
   cast(
left(
[λ������],
case when charindex('-',[λ������])-1 >=0 THEN charindex('-',[λ������])-1
else len([λ������])
end
) as varchar(50)
)as ����
,
cast(
right(
[λ������],
len([λ������])-case when charindex('-',[λ������])>0  then charindex('-',[λ������]) else len([λ������]) end
) as varchar(50)
)as ����
,
CAST ([λ�õ�·] as varchar(255)) AS λ�õ�·
,
cast(
left([����],charindex('|',[����])-1)
as varchar(10)
)as ����
,
cast(
case when 
right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
) ='' then '���ǵ�����'else right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
)end
as varchar(10)
)as �Ƿ����
,
--top 3
cast(
left([����],charindex('Ԫ',[����])-1)
as varchar(10)
)as ����
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_������] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_������_JW] as b
on a.[ZFID] = b.[ZFID] and a.[����λ��] = b.[����λ��]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([�����д],charindex('|',[�����д])-1)as varchar(10)
) 
AS ��������
,
CAST(
   left(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )-1
   )
   as varchar(10)
) AS ���ⷽʽ
,   
cast(
   left(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )-1
   )
   as varchar(10)
   )as װ������
   ,
   cast(
   right(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   len(  substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ))-
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )
   ) as varchar(10)
   )as ¥��
   ,
CAST(a.[����λ��] as varchar(255)) AS ����λ��
   ,
   cast(
left(
[λ������],
case when charindex('-',[λ������])-1 >=0 THEN charindex('-',[λ������])-1
else len([λ������])
end
) as varchar(50)
)as ����
,
cast(
right(
[λ������],
len([λ������])-case when charindex('-',[λ������])>0  then charindex('-',[λ������]) else len([λ������]) end
) as varchar(50)
)as ����
,
CAST ([λ�õ�·] as varchar(255)) AS λ�õ�·
,
cast(
left([����],charindex('|',[����])-1)
as varchar(10)
)as ����
,
cast(
case when 
right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
) ='' then '���ǵ�����'else right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
)end
as varchar(10)
)as �Ƿ����
,
--top 3
cast(
left([����],charindex('Ԫ',[����])-1)
as varchar(10)
)as ����
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_Խ����] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_Խ����_JW] as b
on a.[ZFID] = b.[ZFID] and a.[����λ��] = b.[����λ��]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([�����д],charindex('|',[�����д])-1)as varchar(10)
) 
AS ��������
,
CAST(
   left(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )-1
   )
   as varchar(10)
) AS ���ⷽʽ
,   
cast(
   left(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )-1
   )
   as varchar(10)
   )as װ������
   ,
   cast(
   right(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   len(  substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ))-
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )
   ) as varchar(10)
   )as ¥��
   ,
CAST(a.[����λ��] as varchar(255)) AS ����λ��
   ,
   cast(
left(
[λ������],
case when charindex('-',[λ������])-1 >=0 THEN charindex('-',[λ������])-1
else len([λ������])
end
) as varchar(50)
)as ����
,
cast(
right(
[λ������],
len([λ������])-case when charindex('-',[λ������])>0  then charindex('-',[λ������]) else len([λ������]) end
) as varchar(50)
)as ����
,
CAST ([λ�õ�·] as varchar(255)) AS λ�õ�·
,
cast(
left([����],charindex('|',[����])-1)
as varchar(10)
)as ����
,
cast(
case when 
right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
) ='' then '���ǵ�����'else right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
)end
as varchar(10)
)as �Ƿ����
,
--top 3
cast(
left([����],charindex('Ԫ',[����])-1)
as varchar(10)
)as ����
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_�ܸ���] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_�ܸ���_JW] as b
on a.[ZFID] = b.[ZFID] and a.[����λ��] = b.[����λ��]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([�����д],charindex('|',[�����д])-1)as varchar(10)
) 
AS ��������
,
CAST(
   left(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )-1
   )
   as varchar(10)
) AS ���ⷽʽ
,   
cast(
   left(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )-1
   )
   as varchar(10)
   )as װ������
   ,
   cast(
   right(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   len(  substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ))-
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )
   ) as varchar(10)
   )as ¥��
   ,
CAST(a.[����λ��] as varchar(255)) AS ����λ��
   ,
   cast(
left(
[λ������],
case when charindex('-',[λ������])-1 >=0 THEN charindex('-',[λ������])-1
else len([λ������])
end
) as varchar(50)
)as ����
,
cast(
right(
[λ������],
len([λ������])-case when charindex('-',[λ������])>0  then charindex('-',[λ������]) else len([λ������]) end
) as varchar(50)
)as ����
,
CAST ([λ�õ�·] as varchar(255)) AS λ�õ�·
,
cast(
left([����],charindex('|',[����])-1)
as varchar(10)
)as ����
,
cast(
case when 
right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
) ='' then '���ǵ�����'else right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
)end
as varchar(10)
)as �Ƿ����
,
--top 3
cast(
left([����],charindex('Ԫ',[����])-1)
as varchar(10)
)as ����
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_������] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_������_JW] as b
on a.[ZFID] = b.[ZFID] and a.[����λ��] = b.[����λ��]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([�����д],charindex('|',[�����д])-1)as varchar(10)
) 
AS ��������
,
CAST(
   left(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )-1
   )
   as varchar(10)
) AS ���ⷽʽ
,   
cast(
   left(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )-1
   )
   as varchar(10)
   )as װ������
   ,
   cast(
   right(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   len(  substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ))-
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )
   ) as varchar(10)
   )as ¥��
   ,
CAST(a.[����λ��] as varchar(255)) AS ����λ��
   ,
   cast(
left(
[λ������],
case when charindex('-',[λ������])-1 >=0 THEN charindex('-',[λ������])-1
else len([λ������])
end
) as varchar(50)
)as ����
,
cast(
right(
[λ������],
len([λ������])-case when charindex('-',[λ������])>0  then charindex('-',[λ������]) else len([λ������]) end
) as varchar(50)
)as ����
,
CAST ([λ�õ�·] as varchar(255)) AS λ�õ�·
,
cast(
left([����],charindex('|',[����])-1)
as varchar(10)
)as ����
,
cast(
case when 
right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
) ='' then '���ǵ�����'else right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
)end
as varchar(10)
)as �Ƿ����
,
--top 3
cast(
left([����],charindex('Ԫ',[����])-1)
as varchar(10)
)as ����
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_�����] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_�����_JW] as b
on a.[ZFID] = b.[ZFID] and a.[����λ��] = b.[����λ��]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([�����д],charindex('|',[�����д])-1)as varchar(10)
) 
AS ��������
,
CAST(
   left(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )-1
   )
   as varchar(10)
) AS ���ⷽʽ
,   
cast(
   left(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )-1
   )
   as varchar(10)
   )as װ������
   ,
   cast(
   right(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   len(  substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ))-
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )
   ) as varchar(10)
   )as ¥��
   ,
CAST(a.[����λ��] as varchar(255)) AS ����λ��
   ,
   cast(
left(
[λ������],
case when charindex('-',[λ������])-1 >=0 THEN charindex('-',[λ������])-1
else len([λ������])
end
) as varchar(50)
)as ����
,
cast(
right(
[λ������],
len([λ������])-case when charindex('-',[λ������])>0  then charindex('-',[λ������]) else len([λ������]) end
) as varchar(50)
)as ����
,
CAST ([λ�õ�·] as varchar(255)) AS λ�õ�·
,
cast(
left([����],charindex('|',[����])-1)
as varchar(10)
)as ����
,
cast(
case when 
right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
) ='' then '���ǵ�����'else right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
)end
as varchar(10)
)as �Ƿ����
,
--top 3
cast(
left([����],charindex('Ԫ',[����])-1)
as varchar(10)
)as ����
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_������] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_������_JW] as b
on a.[ZFID] = b.[ZFID] and a.[����λ��] = b.[����λ��]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([�����д],charindex('|',[�����д])-1)as varchar(10)
) 
AS ��������
,
CAST(
   left(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )-1
   )
   as varchar(10)
) AS ���ⷽʽ
,   
cast(
   left(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )-1
   )
   as varchar(10)
   )as װ������
   ,
   cast(
   right(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   len(  substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ))-
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )
   ) as varchar(10)
   )as ¥��
   ,
CAST(a.[����λ��] as varchar(255)) AS ����λ��
   ,
   cast(
left(
[λ������],
case when charindex('-',[λ������])-1 >=0 THEN charindex('-',[λ������])-1
else len([λ������])
end
) as varchar(50)
)as ����
,
cast(
right(
[λ������],
len([λ������])-case when charindex('-',[λ������])>0  then charindex('-',[λ������]) else len([λ������]) end
) as varchar(50)
)as ����
,
CAST ([λ�õ�·] as varchar(255)) AS λ�õ�·
,
cast(
left([����],charindex('|',[����])-1)
as varchar(10)
)as ����
,
cast(
case when 
right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
) ='' then '���ǵ�����'else right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
)end
as varchar(10)
)as �Ƿ����
,
--top 3
cast(
left([����],charindex('Ԫ',[����])-1)
as varchar(10)
)as ����
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_��خ��] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_��خ��_JW] as b
on a.[ZFID] = b.[ZFID] and a.[����λ��] = b.[����λ��]
;

insert into [DESKTOP-NNRODTU].[ZFBI_Study_ODS].[dbo].[ODS_ZF_AllDate_GZ]
select
--top 3
CAST (a.[ZFID] as varchar(10)) AS ZFID,
CAST(
left([�����д],charindex('|',[�����д])-1)as varchar(10)
) 
AS ��������
,
CAST(
   left(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )-1
   )
   as varchar(10)
) AS ���ⷽʽ
,   
cast(
   left(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )-1
   )
   as varchar(10)
   )as װ������
   ,
   cast(
   right(
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ),
   len(  substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   ))-
   charindex('|',
   substring(
   substring([�����д],charindex('|',[�����д])+1,len([�����д])),
   charindex
   (
   '|',
   substring([�����д],charindex('|',[�����д])+1,len([�����д]))
   )+1,
   len(substring([�����д],charindex('|',[�����д])+1,len([�����д])))
   )
   )
   ) as varchar(10)
   )as ¥��
   ,
CAST(a.[����λ��] as varchar(255)) AS ����λ��
   ,
   cast(
left(
[λ������],
case when charindex('-',[λ������])-1 >=0 THEN charindex('-',[λ������])-1
else len([λ������])
end
) as varchar(50)
)as ����
,
cast(
right(
[λ������],
len([λ������])-case when charindex('-',[λ������])>0  then charindex('-',[λ������]) else len([λ������]) end
) as varchar(50)
)as ����
,
CAST ([λ�õ�·] as varchar(255)) AS λ�õ�·
,
cast(
left([����],charindex('|',[����])-1)
as varchar(10)
)as ����
,
cast(
case when 
right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
) ='' then '���ǵ�����'else right(
[����],
len([����])-case when charindex('|',[����])>0  then charindex('|',[����]) else len([����]) end
)end
as varchar(10)
)as �Ƿ����
,
--top 3
cast(
left([����],charindex('Ԫ',[����])-1)
as varchar(10)
)as ����
,
cast(b.latb as numeric(18,2)) as latb
,
cast(b.lngb as float) as lngb
from
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_��ɳ��] as a
left join 
[DESKTOP-NNRODTU].[ZFBI_Study_YW].[dbo].[ZF_��ɳ��_JW] as b
on a.[ZFID] = b.[ZFID] and a.[����λ��] = b.[����λ��]
;