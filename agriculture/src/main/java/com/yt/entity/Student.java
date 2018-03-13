package com.yt.entity;

public class Student {

	private int uid;
	private String uname;
	private String upwd;
	
	public Student(){}
	public Student(int uid,String uname,String upwd){
		this.uid=uid;
		this.uname=uname;
		this.upwd=upwd;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "Student [uid=" + uid + ", uname=" + uname + ", upwd=" + upwd
				+ "]";
	}
	
}
