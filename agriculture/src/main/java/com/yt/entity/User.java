package com.yt.entity;

public class User {
private int userid;
private String ID;
private String uname;
private String upwd;
private String uaddress;
private String utel;
private String ubirth;
private String usex;
private String uemail;

@Override
public String toString() {
	return "User [userid=" + userid + ", ID=" + ID + ", uname=" + uname
			+ ", upwd=" + upwd + ", uaddress=" + uaddress + ", utel=" + utel
			+ ", ubirth=" + ubirth + ", usex=" + usex + ", uemail=" + uemail
			+ "]";
}
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
public String getID() {
	return ID;
}
public void setID(String iD) {
	ID = iD;
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
public String getUaddress() {
	return uaddress;
}
public void setUaddress(String uaddress) {
	this.uaddress = uaddress;
}
public String getUtel() {
	return utel;
}
public void setUtel(String utel) {
	this.utel = utel;
}
public String getUbirth() {
	return ubirth;
}
public void setUbirth(String ubirth) {
	this.ubirth = ubirth;
}
public String getUsex() {
	return usex;
}
public void setUsex(String usex) {
	this.usex = usex;
}
public String getUemail() {
	return uemail;
}
public void setUemail(String uemail) {
	this.uemail = uemail;
}
}
