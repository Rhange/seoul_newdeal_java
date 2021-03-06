SELECT UM.MNU_ID, M.MNU_NM
  FROM tb_userinfo AS U
  LEFT JOIN tn_usr_mnu_atrt AS UM
  ON U.user_Type = UM.user_type
  LEFT JOIN tm_mnu_mst AS M
  ON UM.MNU_ID = M.MNU_ID
  WHERE U.loginId = 'dbserver';
  
# 팀장님 답안
SELECT LL.MNU_ID, LL.MNU_NM
  FROM tb_userinfo UI
       LEFT OUTER JOIN (
                      SELECT MM.MNU_ID, MM.MNU_NM, MA.user_type
                        FROM tm_mnu_mst MM
                             INNER JOIN tn_usr_mnu_atrt MA ON MA.MNU_ID = MM.MNU_ID
                        ) LL ON LL.user_type = UI.user_Type
 WHERE UI.loginId = 'dbserver';
 
# 좀 더 효율적인 query
select mm.MNU_ID, mm.MNU_NM
  from tn_usr_mnu_atrt ma
       inner join tm_mnu_mst mm on ma.MNU_ID = mm.MNU_ID
                               and ma.user_type = (
                                                    select user_type
                                                      from tb_userinfo ui
                                                     where loginId = 'dbserver'
                                                   );