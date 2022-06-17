package com.pk.pt.review;

import java.math.BigDecimal;
import java.util.Date;

public class Review {
	
	private BigDecimal tr_no;
	private String tr_g_id;
	private String tr_writer;
	private String tr_img;
	private String tr_txt;
	private Date tr_date;
	
	private String goods_id;
	
	public Review() {
		// TODO Auto-generated constructor stub
	}

	public Review(BigDecimal tr_no, String tr_g_id, String tr_writer, String tr_img, String tr_txt, Date tr_date,
			String goods_id) {
		super();
		this.tr_no = tr_no;
		this.tr_g_id = tr_g_id;
		this.tr_writer = tr_writer;
		this.tr_img = tr_img;
		this.tr_txt = tr_txt;
		this.tr_date = tr_date;
		this.goods_id = goods_id;
	}

	public BigDecimal getTr_no() {
		return tr_no;
	}

	public void setTr_no(BigDecimal tr_no) {
		this.tr_no = tr_no;
	}

	public String getTr_g_id() {
		return tr_g_id;
	}

	public void setTr_g_id(String tr_g_id) {
		this.tr_g_id = tr_g_id;
	}

	public String getTr_writer() {
		return tr_writer;
	}

	public void setTr_writer(String tr_writer) {
		this.tr_writer = tr_writer;
	}

	public String getTr_img() {
		return tr_img;
	}

	public void setTr_img(String tr_img) {
		this.tr_img = tr_img;
	}

	public String getTr_txt() {
		return tr_txt;
	}

	public void setTr_txt(String tr_txt) {
		this.tr_txt = tr_txt;
	}

	public Date getTr_date() {
		return tr_date;
	}

	public void setTr_date(Date tr_date) {
		this.tr_date = tr_date;
	}

	public String getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}
	

}
