create table TJD_GOODS(
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

INSERT INTO TJD_GOODS (goods_id, goods_name, goods_price) VALUES ('test_goods_id', 'test_goods_name', 50000)


insert into TJD_GOODS values('test_product_id', 'test_product_name', 50000, 0, '상의', '파란색', sysdate, sysdate)

select * from TJD_goods_category

drop table TJD_goods_category

create table TJD_goods_cart(
	cart_id number(10) primary key,
	cart_qty number(4),
	tm_id varchar2(10 char),
	goods_id varchar2(100 char),
	reqDate Date default sysdate,
	constraint cart_fk_tm_id 
		foreign key(tm_id)
		references TJD_MEMBER(tm_id)
		on delete cascade,
	constraint cart_fk_goods_id
		foreign key(goods_id)
		references TJD_goods(goods_id)
		on delete cascade
)
