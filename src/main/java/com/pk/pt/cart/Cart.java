package com.pk.pt.cart;

import java.util.Date;

public class Cart {
	
	private int cart_id;
	private int cart_qty;
	private String tm_id;
	private String goods_id;
	private Date regDate;
	
	public Cart() {
		// TODO Auto-generated constructor stub
	}

	public Cart(int cart_id, int cart_qty, String tm_id, String goods_id, Date regDate) {
		super();
		this.cart_id = cart_id;
		this.cart_qty = cart_qty;
		this.tm_id = tm_id;
		this.goods_id = goods_id;
		this.regDate = regDate;
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
	
	
}
