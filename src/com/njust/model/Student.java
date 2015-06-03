package com.njust.model;

public class Student {

	private int studentid;
	private String name;
	private String school;
	private String schoolid;
	private String major;
	private String phonenum;
	private String email;
	private String prefercity;
	
	
	

	
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}





	public Student(int studentid, String name, String school, String schoolid,
			String major, String phonenum, String email, String prefercity) {
		super();
		this.studentid = studentid;
		this.name = name;
		this.school = school;
		this.schoolid = schoolid;
		this.major = major;
		this.phonenum = phonenum;
		this.email = email;
		this.prefercity = prefercity;
	}





	public int getStudentid() {
		return studentid;
	}





	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}





	public String getName() {
		return name;
	}





	public void setName(String name) {
		this.name = name;
	}





	public String getSchool() {
		return school;
	}





	public void setSchool(String school) {
		this.school = school;
	}





	public String getSchoolid() {
		return schoolid;
	}





	public void setSchoolid(String schoolid) {
		this.schoolid = schoolid;
	}





	public String getMajor() {
		return major;
	}





	public void setMajor(String major) {
		this.major = major;
	}





	public String getPhonenum() {
		return phonenum;
	}





	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}





	public String getEmail() {
		return email;
	}





	public void setEmail(String email) {
		this.email = email;
	}





	public String getPrefercity() {
		return prefercity;
	}





	public void setPrefercity(String prefercity) {
		this.prefercity = prefercity;
	}
	
	
	
	
	
}
