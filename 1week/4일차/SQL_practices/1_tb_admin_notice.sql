select notice_id 글번호, notice_tit 제목, replace(loginId, 'admin', '관리자') 작성자, DATE_FORMAT(regdate, '%Y.%m.%d') 등록일, hit 조회수
from tb_adm_notice
order by notice_id desc;