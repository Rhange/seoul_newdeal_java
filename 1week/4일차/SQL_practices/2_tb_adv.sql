select lec_id, lec_name, date_format(c_st, '%Y.%m.%d') start, date_format(c_end, '%Y.%m.%d') end
from tb_lec_info;

select ta.adv_id, tli.lec_name, concat(tui.name, ' (', std_id, ')') 이름, date_format(adv_date, '%Y.%m.%d') date, 
concat(' (', tut_id, ')')
from tb_adv ta
left join tb_lec_info tli
on ta.lec_id = tli.lec_id
left join tb_userinfo tui
on tui.loginID = ta.std_id
order by adv_id desc;

select *
from tb_userinfo;

select *
from tb_lec_info;