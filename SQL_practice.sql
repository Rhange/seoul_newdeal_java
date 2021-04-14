SELECT *
  FROM tb_group_code;
  
SELECT *
  FROM tb_detail_code;
  
SELECT *
  FROM tb_group_code AS GC
      ,tb_detail_code AS DC
  WHERE GC.group_code = DC.group_code;
  
SELECT GC.group_code as GC_group_code, DC.group_code as DC_group_code
  FROM tb_group_code GC
  RIGHT JOIN tb_detail_code DC
  ON GC.group_code = DC.group_code;
  
SELECT GC.group_code AS GC_group_code, DC.group_code AS DC_group_code
  FROM tb_group_code AS GC
  LEFT JOIN tb_detail_code AS DC
  USING (group_code);
  
SELECT GC.group_code grouptable, DC.group_code detailtable 
  FROM tb_group_code GC
  INNER JOIN tb_detail_code DC;