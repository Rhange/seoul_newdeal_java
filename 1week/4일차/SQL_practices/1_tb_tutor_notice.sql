select notice_id 글번호, notice_tit 제목, loginId 작성자, date_format(regdate, '%Y.%m.%d') 등록일, hit 조회수
from tb_tutor_notice
order by notice_id desc;