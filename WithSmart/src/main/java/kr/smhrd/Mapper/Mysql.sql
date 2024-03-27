INSERT INTO tbl_member(mb_id, mb_pw, mb_nick, mb_cert, mb_type) VALUES('admin@naver.com', '12345', '관리자','AISERVICE17','1');
INSERT INTO tbl_member(mb_id, mb_pw, mb_nick, mb_cert, mb_type) VALUES('wldh0126@naver.com', '1020', '지오짱짱맨','AISERVICE17','2');

INSERT INTO tbl_member VALUES('1', '1', '1','1');
INSERT INTO tbl_member VALUES('2', '2', '2','2');
INSERT INTO tbl_member VALUES('3', '3', '3','3');
INSERT INTO tbl_member VALUES('4', '4', '4','4');
INSERT INTO tbl_member VALUES('5', '5', '5','5');

select * from tbl_member;

select * from tbl_suggboard;

delete from tbl_member where mb_pw='5555';


commit;



