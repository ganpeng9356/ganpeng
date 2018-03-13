package com.yt.entity;

public class Record {

	private int rid; //记录表编号
	private String ID; //用户ID号
	private int cid; //商品编号
	private String rtime; //购买时间
	private String rpice; //价格
	private String ccolor; //颜色
	private String cname; //商品名字
	private String cweight; //商品重量
	private String cstate; //商品状态
	private String cimg; //图片名字
	private String croute; //图片路径
	
	@Override
	public String toString() {
		return "Record [rid=" + rid + ", ID=" + ID + ", cid=" + cid
				+ ", rtime=" + rtime + ", rpice=" + rpice + ", ccolor="
				+ ccolor + ", cname=" + cname + ", cweight=" + cweight
				+ ", cstate=" + cstate + ", cimg=" + cimg + ", croute="
				+ croute + "]";
	}
	public String getCcolor() {
		return ccolor;
	}
	public void setCcolor(String ccolor) {
		this.ccolor = ccolor;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCweight() {
		return cweight;
	}
	public void setCweight(String cweight) {
		this.cweight = cweight;
	}
	public String getCstate() {
		return cstate;
	}
	public void setCstate(String cstate) {
		this.cstate = cstate;
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
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getRtime() {
		return rtime;
	}
	public void setRtime(String rtime) {
		this.rtime = rtime;
	}
	public String getRpice() {
		return rpice;
	}
	public void setRpice(String rpice) {
		this.rpice = rpice;
	}
	
}
