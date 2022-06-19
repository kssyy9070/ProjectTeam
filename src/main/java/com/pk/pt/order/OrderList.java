package com.pk.pt.order;

import java.util.Date;

public class OrderList {
	
	private String order_id;
	private String tm_id;
	private String tm_name;
	private String tm_addr1;
	private String tm_addr2;
	private String tm_addr3;
	private String tm_phone;
	private int totalAmount;
	private Date orderDate;
	private int order_qty;
	private String goods_id;
	
	private String goods_name;
	private String goods_img;
	private String goods_detail;
	private String goods_price;
	
	public OrderList() {
		// TODO Auto-generated constructor stub
	}

	public OrderList(String order_id, String tm_id, String tm_name, String tm_addr1, String tm_addr2, String tm_addr3,
			String tm_phone, int totalAmount, Date orderDate, int order_qty, String goods_id, String goods_name,
			String goods_img, String goods_detail, String goods_price) {
		super();
		this.order_id = order_id;
		this.tm_id = tm_id;
		this.tm_name = tm_name;
		this.tm_addr1 = tm_addr1;
		this.tm_addr2 = tm_addr2;
		this.tm_addr3 = tm_addr3;
		this.tm_phone = tm_phone;
		this.totalAmount = totalAmount;
		this.orderDate = orderDate;
		this.order_qty = order_qty;
		this.goods_id = goods_id;
		this.goods_name = goods_name;
		this.goods_img = goods_img;
		this.goods_detail = goods_detail;
		this.goods_price = goods_price;
	}

	public String getOrder_id() {
		return order_id;
	}

	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}

	public String getTm_id() {
		return tm_id;
	}

	public void setTm_id(String tm_id) {
		this.tm_id = tm_id;
	}

	public String getTm_name() {
		return tm_name;
	}

	public void setTm_name(String tm_name) {
		this.tm_name = tm_name;
	}

	public String getTm_addr1() {
		return tm_addr1;
	}

	public void setTm_addr1(String tm_addr1) {
		this.tm_addr1 = tm_addr1;
	}

	public String getTm_addr2() {
		return tm_addr2;
	}

	public void setTm_addr2(String tm_addr2) {
		this.tm_addr2 = tm_addr2;
	}

	public String getTm_addr3() {
		return tm_addr3;
	}

	public void setTm_addr3(String tm_addr3) {
		this.tm_addr3 = tm_addr3;
	}

	public String getTm_phone() {
		return tm_phone;
	}

	public void setTm_phone(String tm_phone) {
		this.tm_phone = tm_phone;
	}

	public int getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public int getOrder_qty() {
		return order_qty;
	}

	public void setOrder_qty(int order_qty) {
		this.order_qty = order_qty;
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

	public String getGoods_img() {
		return goods_img;
	}

	public void setGoods_img(String goods_img) {
		this.goods_img = goods_img;
	}

	public String getGoods_detail() {
		return goods_detail;
	}

	public void setGoods_detail(String goods_detail) {
		this.goods_detail = goods_detail;
	}

	public String getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(String goods_price) {
		this.goods_price = goods_price;
	}
	
	
	
	
	
}
