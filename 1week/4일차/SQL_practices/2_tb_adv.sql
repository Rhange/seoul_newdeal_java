select lec_id, lec_name, date_format(c_st, '%Y.%m.%d') start, date_format(c_end, '%Y.%m.%d') end
from tb_lec_info;

select ta.adv_id '상담 번호', tli.lec_name '수강 강의', 
  concat(tui.name, ' (', std_id, ')') '학생명 (ID)', 
  date_format(adv_date, '%Y.%m.%d') 상담일자, 
  concat(tui2.name, ' (', tut_id, ')') '강사 (ID)'
from tb_adv ta
left join tb_lec_info tli
on ta.lec_id = tli.lec_id
left join tb_userinfo tui
on tui.loginID = ta.std_id
left join tb_userinfo tui2
on tui2.loginID = ta.tut_id
order by adv_id desc;