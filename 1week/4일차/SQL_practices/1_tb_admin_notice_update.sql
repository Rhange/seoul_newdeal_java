select notice_tit, notice_con
from tb_adm_notice
order by notice_id desc;

update tb_adm_notice
set notice_tit = '가가가', notice_con = '202104015변경2'
where notice_id = 30;