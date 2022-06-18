package com.pk.pt.order;

import java.util.Date;

public class OrderDetail {
	
	private int o_d_num;
	private String order_id;
	private int order_qyt;
	private String goods_id;
	private String deliver_msg;
	private int deliver_situ;
	private Date billingDate;
	private String cal_info;
	
	public OrderDetail() {
		// TODO Auto-generated constructor stub
	}

	public OrderDetail(int o_d_num, String order_id, int order_qyt, String goods_id, String deliver_msg,
			int deliver_situ, Date billingDate, String cal_info) {
		super();
		this.o_d_num = o_d_num;
		this.order_id = order_id;
		this.order_qyt = order_qyt;
		this.goods_id = goods_id;
		this.deliver_msg = deliver_msg;
		this.deliver_situ = deliver_situ;
		this.billingDate = billingDate;
		this.cal_info = cal_info;
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

	public int getOrder_qyt() {
		return order_qyt;
	}

	public void setOrder_qyt(int order_qyt) {
		this.order_qyt = order_qyt;
	}

	public String getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}

	public String getDeliver_msg() {
		return deliver_msg;
	}

	public void setDeliver_msg(String deliver_msg) {
		this.deliver_msg = deliver_msg;
	}

	public int getDeliver_situ() {
		return deliver_situ;
	}

	public void setDeliver_situ(int deliver_situ) {
		this.deliver_situ = deliver_situ;
	}

	public Date getBillingDate() {
		return billingDate;
	}

	public void setBillingDate(Date billingDate) {
		this.billingDate = billingDate;
	}

	public String getCal_info() {
		return cal_info;
	}

	public void setCal_info(String cal_info) {
		this.cal_info = cal_info;
	}
	
	
}
