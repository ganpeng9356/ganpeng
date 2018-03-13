package com.yt.entity;

public class Commodity {
private int cid; //商品号
private String cname; //商品名
private String cprice; //商品价格
private String ccolor; //商品颜色
private String cweight; //商品重量
private String cplace;  //商品产地
private String cdescribe; //商品描述
private String cprevention;//商品防病措施
private String cstate; //状态
private String cclassification; //商品分类
private String ID; //用户id
private String cimg; //图片名字
private String croute; //图片路径
private String cdate;//上传时间
private int purchaseNumber; //购买次数

public int getPurchaseNumber() {
	return purchaseNumber;
}
public void setPurchaseNumber(int purchaseNumber) {
	this.purchaseNumber = purchaseNumber;
}
@Override
public String toString() {
	return "Commodity [cid=" + cid + ", cname=" + cname + ", cprice=" + cprice
			+ ", ccolor=" + ccolor + ", cweight=" + cweight + ", cplace="
			+ cplace + ", cdescribe=" + cdescribe + ", cprevention="
			+ cprevention + ", cstate=" + cstate + ", cclassification="
			+ cclassification + ", ID=" + ID + ", cimg=" + cimg + ", croute="
			+ croute + ", cdate=" + cdate + "]";
}
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
public String getCprice() {
	return cprice;
}
public void setCprice(String cprice) {
	this.cprice = cprice;
}
public String getCcolor() {
	return ccolor;
}
public void setCcolor(String ccolor) {
	this.ccolor = ccolor;
}
public String getCweight() {
	return cweight;
}
public void setCweight(String cweight) {
	this.cweight = cweight;
}
public String getCplace() {
	return cplace;
}
public void setCplace(String cplace) {
	this.cplace = cplace;
}
public String getCdescribe() {
	return cdescribe;
}
public void setCdescribe(String cdescribe) {
	this.cdescribe = cdescribe;
}
public String getCprevention() {
	return cprevention;
}
public void setCprevention(String cprevention) {
	this.cprevention = cprevention;
}
public String getCstate() {
	return cstate;
}
public void setCstate(String cstate) {
	this.cstate = cstate;
}
public String getCclassification() {
	return cclassification;
}
public void setCclassification(String cclassification) {
	this.cclassification = cclassification;
}
public String getID() {
	return ID;
}
public void setID(String iD) {
	ID = iD;
}
public String getCimg() {
	return cimg;
}
public void setCimg(String cimg) {
	this.cimg = cimg;
}
public String getCroute() {
	return croute;
}
public void setCroute(String croute) {
	this.croute = croute;
}
public String getCdate() {
	return cdate;
}
public void setCdate(String cdate) {
	this.cdate = cdate;
}

}
