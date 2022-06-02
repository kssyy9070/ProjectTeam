drop table TJD_MEMBER;

create table tjd_member(
	tm_id varchar2(10 char) primary key,
	tm_pw varchar2(20 char) not null,
	tm_name varchar2(15 char) not null,
	tm_addr varchar2(200 char) not null,
	tm_phone varchar2(11) not null
);

insert into TJD_MEMBER values('test1','test1','test')
select * from TJD_MEMBER;

insert into tjd_member values('test1','test1','테스터1','서울특별시 중구 세종대로 110','01012345678');