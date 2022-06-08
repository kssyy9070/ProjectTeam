package com.pk.pt.goods;

import java.util.Date;

public class Goods {
	
	private String goods_id;
	private String goods_name;
	private int goods_price;
	private int goods_stock;
	private String goods_cate;
	private String goods_detail;
	private Date goods_regDate;
	private Date goods_updateDate;
	
	public Goods() {
		// TODO Auto-generated constructor stub
	}

	public Goods(String goods_id, String goods_name, int goods_price, int goods_stock, String goods_cate,
			String goods_detail, Date goods_regDate, Date goods_updateDate) {
		super();
		this.goods_id = goods_id;
		this.goods_name = goods_name;
		this.goods_price = goods_price;
		this.goods_stock = goods_stock;
		this.goods_cate = goods_cate;
		this.goods_detail = goods_detail;
		this.goods_regDate = goods_regDate;
		this.goods_updateDate = goods_updateDate;
	}

	public String getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public int getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}

	public int getGoods_stock() {
		return goods_stock;
	}

	public void setGoods_stock(int goods_stock) {
		this.goods_stock = goods_stock;
	}

	public String getGoods_cate() {
		return goods_cate;
	}

	public void setGoods_cate(String goods_cate) {
		this.goods_cate = goods_cate;
	}

	public String getGoods_detail() {
		return goods_detail;
	}

	public void setGoods_detail(String goods_detail) {
		this.goods_detail = goods_detail;
	}

	public Date getGoods_regDate() {
		return goods_regDate;
	}

	public void setGoods_regDate(Date goods_regDate) {
		this.goods_regDate = goods_regDate;
	}

	public Date getGoods_updateDate() {
		return goods_updateDate;
	}

	public void setGoods_updateDate(Date goods_updateDate) {
		this.goods_updateDate = goods_updateDate;
	}
	
	

}
