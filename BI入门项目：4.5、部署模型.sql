/****** SSMS �� SelectTopNRows ����Ľű�  ******/
SELECT  [RegionID]
      ,[CountyCity]
      ,[Region]
      ,[Location] 
  FROM [ZFBI_Study_DW].[dbo].[DW_Dim_Region] where Region ='';
  /****** SSMS �� SelectTopNRows ����Ľű�  ******/

delete  FROM [ZFBI_Study_DW].[dbo].[DW_Dim_Region] where Region ='';