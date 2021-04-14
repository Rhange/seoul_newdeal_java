SELECT MM.MNU_ID, MM.MNU_NM
  FROM tn_usr_mnu_atrt AS MA
  LEFT OUTER JOIN tm_mnu_mst AS MM
  ON MA.MNU_ID = MM.MNU_ID
  WHERE MA.user_type = 'C';
  
select mm.MNU_NM, mm.MNU_ID
  from tn_usr_mnu_atrt ma
       inner join tm_mnu_mst mm on ma.MNU_ID = mm.MNU_ID and ma.user_type = 'C';