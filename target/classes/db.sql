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