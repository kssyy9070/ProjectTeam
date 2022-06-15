create table test_goods(
	goods_id varchar2(100 char) primary key,
	goods_name varchar2(300 char) not null,
	goods_price number(10) not null,
	goods_stock number(4) default 0,
	goods_cate varchar2(30 char),
	goods_detail varchar2(100 char),
	goods_img varchar2(1000 char),
	goods_regDate Date default sysdate,
	goods_updateDate Date default sysdate
) 

INSERT INTO test_goods (goods_id, goods_name, goods_price) VALUES ('test_goods_id', 'test_goods_name', 50000)


insert into test_goods values('test_product_id', 'test_product_name', 50000, 0, '상의', '파란색', sysdate, sysdate)

select * from test_goods

drop table test_goods