package com.entity;



public class Contact  {
	
	private int id;
	private String name;
	private String email;
	private String pno;
	private int userid;
	
	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Contact(String name, String email, String pno, int userid) {
		super();
		this.name = name;
		this.email = email;
		this.pno = pno;
		this.userid = userid;
	}

	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPno() {
		return pno;
	}

	public void setPno(String pno) {
		this.pno = pno;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	
	
	

}
