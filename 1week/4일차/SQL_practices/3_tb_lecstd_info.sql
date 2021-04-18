select tu.std_num, tu.name, tli.lec_name, lsi.atd_per
from tb_lecstd_info lsi
left join tb_userinfo tu
on tu.loginID = lsi.std_id
left join tb_lec_info tli
on tli.lec_id = lsi.lec_id
where lsi.lec_id = 1008
order by tu.name;
