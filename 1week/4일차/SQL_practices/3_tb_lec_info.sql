select tli.lec_id, tli.lec_name, tu.name, tl.lecrm_name, tli.pre_pnum, date_format(tli.c_st, '%Y.%m.%d'), date_format(tli.c_end, '%Y.%m.%d')
from tb_lec_info tli
inner join tb_userinfo tu
on tli.tutor_id = tu.loginID
left join tb_lecrm tl
on tli.lecrm_id = tl.lecrm_id
order by lec_id desc;