drop table TJD_MEMBER;

create table tjd_member(
	tm_id varchar2(10 char) primary key,
	tm_pw varchar2(20 char) not null,
	tm_name varchar2(15 char) not null,
	tm_addr1 varchar2(6 char) not null,
	tm_addr2 varchar2(100 char) not null,
	tm_addr3 varchar2(100 char) not null,
	tm_phone varchar2(11) not null
);


insert into tjd_member values('test1','test1','테스터1','12345','서울특별시 중구 세종대로 110','1층','01012345678');
insert into tjd_member values('admin','123','관리자','12345','서울특별시 중구 세종대로 110','10층','01045671234');

select * from tjd_member;

delete from TJD_MEMBER where tm_id = 'test123';

--------------------------------------

create table tjd_review(
	tr_no number(5) primary key,
	tr_g_id varchar2(100 char) not null,
	tr_writer varchar2(10 char) not null,
	tr_img varchar2(200 char) not null, 
	tr_txt varchar2(250 char) not null,
	tr_date date not null,
	constraint review_no
		foreign key(tr_writer)
		references test_goods(goods_id)
		on delete cascade
);

create sequence tjd_review_seq; 

delete from TJD_REVIEW;

insert into tjd_review values (tjd_review_seq.nextval, 'test2','test2','ddd','asdfasdf',sysdate);

select * from TJD_REVIEW;

select * from tjd_review, tjd_goods
		where goods_id = tr_g_id and tr_g_id='test123'
		order by tr_date desc