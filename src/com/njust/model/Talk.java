package com.njust.model;

public class Talk {
	int id ;
	String address;
	String briefintroduction;
	String company;
	
	public Talk() {
		super();
		// TODO 自动生成的构造函数存根
	}
	
	public Talk(int id,  String company,String address, String briefintroduction) {
		super();
		this.id = id;
		this.address = address;
		this.briefintroduction = briefintroduction;
		this.company = company;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBriefintroduction() {
		return briefintroduction;
	}
	public void setBriefintroduction(String briefintroduction) {
		this.briefintroduction = briefintroduction;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}

	

}
