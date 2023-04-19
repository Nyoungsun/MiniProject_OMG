create table ohmygoal_board(
seq NUMBER NOT NULL,
url varchar2(200),              -- 주소
img varchar2(200),              -- 이미지
subject varchar2(50),           -- 제목
content varchar2(4000),         -- 내용
categoty varchar2(20),
mark varchar2(20),
id varchar2(20),                -- 작성자 id
members varchar2(100),          -- 참가 멤버
maxmember number,    
likes NUMBER DEFAULT 0,         -- 좋아요
views NUMBER DEFAULT 0,         -- 조회수
start_date date,
end_date date,
logtime date
);

drop table ohmygoal_board;
drop table ohmygoal_member;
drop SEQUENCE seq_board;
drop SEQUENCE seq_member;

create SEQUENCE seq_board 
    MINVALUE 1  
    MAXVALUE 9999999999999999999999999999
    INCREMENT BY 1
    START WITH 1
    NOCACHE 
    NOORDER
    NOCYCLE ;
    
INSERT INTO ohmygoal_board (seq, url, img, subject, content, mark, id, members, maxmember, likes, views, start_date, end_date, logtime)
VALUES (seq_board.NEXTVAL, 'https://www.google.com/', './image/2.jpg', 'test subjec2t', 'Example Content3', 'React2', 'keras2', '1 2 3 4 5', 0, 0, 0, sysdate, sysdate, sysdate);

commit;

select * from ohmygoal_board;

create table ohmygoal_member(
seq NUMBER NOT NULL,
name varchar2(30),           
id varchar2(30),           
pwd varchar2(30),         
email1 varchar2(30),         
email2 varchar2(30),            
tel1 varchar2(30),     
tel2 varchar2(30), 
tel3 varchar2(30),   
zipcode varchar2(10),   
addr1 varchar2(100),   
addr2 varchar2(100),   
grade number,
boards varchar2(100),
logtime date
);

create SEQUENCE seq_member
    MINVALUE 1  
    MAXVALUE 9999999999999999999999999999
    INCREMENT BY 1
    START WITH 1
    NOCACHE 
    NOORDER
    NOCYCLE ;

select * from ohmygoal_member;