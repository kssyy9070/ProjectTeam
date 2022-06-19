package com.pk.pt.order;


public class OrderDetail {
	
	private int o_d_num;
	private String order_id;
	private int order_qty;
	private String goods_id;
	
	public OrderDetail() {
		// TODO Auto-generated constructor stub
	}

	public OrderDetail(int o_d_num, String order_id, int order_qty, String goods_id) {
		super();
		this.o_d_num = o_d_num;
		this.order_id = order_id;
		this.order_qty = order_qty;
		this.goods_id = goods_id;
	}

	public int getO_d_num() {
		return o_d_num;
	}

	public void setO_d_num(int o_d_num) {
		this.o_d_num = o_d_num;
	}

	public String getOrder_id() {
		return order_id;
	}

	public void setOrder_id(String order_id) {
		this.order_id = order_id;
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

	
	
}
