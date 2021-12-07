/****** SSMS 的 SelectTopNRows 命令的脚本  ******/
SELECT  [RegionID]
      ,[CountyCity]
      ,[Region]
      ,[Location] 
  FROM [ZFBI_Study_DW].[dbo].[DW_Dim_Region] where Region ='';
  /****** SSMS 的 SelectTopNRows 命令的脚本  ******/

delete  FROM [ZFBI_Study_DW].[dbo].[DW_Dim_Region] where Region ='';