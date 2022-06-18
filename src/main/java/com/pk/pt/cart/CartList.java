package com.pk.pt.cart;

import java.util.Date;

public class CartList {
	
	private int cart_id;
	private int cart_qty;
	private String tm_id;
	private String goods_id;
	private Date regDate;
	
	private int num;
	private String goods_detail;
	private String goods_name;
	private int goods_price;
	private String goods_img;
	
	public CartList() {
		// TODO Auto-generated constructor stub
	}

	public CartList(int cart_id, int cart_qty, String tm_id, String goods_id, Date regDate, int num,
			String goods_detail, String goods_name, int goods_price, String goods_img) {
		super();
		this.cart_id = cart_id;
		this.cart_qty = cart_qty;
		this.tm_id = tm_id;
		this.goods_id = goods_id;
		this.regDate = regDate;
		this.num = num;
		this.goods_detail = goods_detail;
		this.goods_name = goods_name;
		this.goods_price = goods_price;
		this.goods_img = goods_img;
	}

	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	public int getCart_qty() {
		return cart_qty;
	}

	public void setCart_qty(int cart_qty) {
		this.cart_qty = cart_qty;
	}

	public String getTm_id() {
		return tm_id;
	}

	public void setTm_id(String tm_id) {
		this.tm_id = tm_id;
	}

	public String getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getGoods_detail() {
		return goods_detail;
	}

	public void setGoods_detail(String goods_detail) {
		this.goods_detail = goods_detail;
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

	public String getGoods_img() {
		return goods_img;
	}

	public void setGoods_img(String goods_img) {
		this.goods_img = goods_img;
	}
	
	
	
	
}
