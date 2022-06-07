package com.pk.pt.member;

public class Member {

	private String tm_id;
	private String tm_pw;
	private String tm_name;
	private String tm_addr1;
	private String tm_addr2;
	private String tm_addr3;
	private String tm_phone;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}
	
	

	public Member(String tm_id, String tm_pw, String tm_name, String tm_addr1, String tm_addr2, String tm_addr3,
			String tm_phone) {
		super();
		this.tm_id = tm_id;
		this.tm_pw = tm_pw;
		this.tm_name = tm_name;
		this.tm_addr1 = tm_addr1;
		this.tm_addr2 = tm_addr2;
		this.tm_addr3 = tm_addr3;
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
	
	
	
	
}
