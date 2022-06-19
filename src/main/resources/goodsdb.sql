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

create sequence TJD_goods_cart_seq;

INSERT INTO TJD_GOODS (goods_id, goods_name, goods_price) VALUES ('test_goods_id', 'test_goods_name', 50000)


insert into TJD_GOODS values('test_product_id', 'test_product_name', 50000, 0, '상의', '파란색', sysdate, sysdate)

select * from TJD_order

drop table TJD_order

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

delete tjd_goods_cart where cart_id = 3 and tm_id = 'test3'
insert into TJD_goods_cart values (TJD_goods_cart_seq.nextval, 99, 'test3', 'test3', sysdate)

create table TJD_order(
	order_id varchar2(50 char) primary key,
	tm_id varchar2(50 char) not null,
	tm_name varchar2(50 char) not null,
	tm_addr1 varchar2(6 char) not null,
	tm_addr2 varchar2(100 char) not null,
	tm_addr3 varchar2(100 char) not null,
	tm_phone varchar2(11) not null,
	totalAmount number(8) not null,
	order_qty number(2),
	goods_id varchar2(100 char) not null,
	orderDate Date default sysdate,
	constraint order_fk_tm_id 
		foreign key(tm_id)
		references TJD_MEMBER(tm_id)
		on delete cascade
)

create table TJD_order_detail (
	o_d_num number(8) primary key,
	order_id varchar2(50 char) not null,
	order_qty number(2) not null,
	goods_id varchar2(100 char) not null,
	constraint order_fk_detail
		foreign key(order_id)
		references TJD_order(order_id)
		on delete cascade
)

create sequence TJD_order_detail_seq;


ALTER TABLE TJD_order DROP CONSTRAINT order_fk_tm_id;











