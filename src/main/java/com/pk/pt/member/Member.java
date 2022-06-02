package com.pk.pt.member;

public class Member {

	private String tm_id;
	private String tm_pw;
	private String tm_name;
	private String tm_addr;
	private String tm_phone;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}
	

	public Member(String tm_id, String tm_pw, String tm_name, String tm_addr, String tm_phone) {
		super();
		this.tm_id = tm_id;
		this.tm_pw = tm_pw;
		this.tm_name = tm_name;
		this.tm_addr = tm_addr;
		this.tm_phone = tm_phone;
	}



	public String getTm_id() {
		return tm_id;
	}

	public void setTm_id(String tm_id) {
		this.tm_id = tm_id;
	}

	public String getTm_pw() {
		return tm_pw;
	}

	public void setTm_pw(String tm_pw) {
		this.tm_pw = tm_pw;
	}

	public String getTm_name() {
		return tm_name;
	}

	public void setTm_name(String tm_name) {
		this.tm_name = tm_name;
	}

	public String getTm_addr() {
		return tm_addr;
	}

	public void setTm_addr(String tm_addr) {
		this.tm_addr = tm_addr;
	}

	public String getTm_phone() {
		return tm_phone;
	}

	public void setTm_phone(String tm_phone) {
		this.tm_phone = tm_phone;
	}
	
	
}
