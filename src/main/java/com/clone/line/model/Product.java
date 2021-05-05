package com.clone.line.model;

public class Product {
	private String pNum;
	private String pName;
	private int pPrice;
	private String pUrl;
	private int pTotal;
	private String pDate;
	public String getpNum() {
		return pNum;
	}
	public void setpNum(String pNum) {
		this.pNum = pNum;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getpPrice() {
		return pPrice;
	}
	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
	public String getpUrl() {
		return pUrl;
	}
	public void setpUrl(String pUrl) {
		this.pUrl = pUrl;
	}
	public int getpTotal() {
		return pTotal;
	}
	public void setpTotal(int pTotal) {
		this.pTotal = pTotal;
	}
	public String getpDate() {
		return pDate;
	}
	public void setpDate(String pDate) {
		this.pDate = pDate;
	}
	@Override
	public String toString() {
		return "Product [pNum=" + pNum + ", pName=" + pName + ", pPrice=" + pPrice + ", pUrl=" + pUrl + ", pTotal=" + pTotal + ", pDate=" + pDate + "]";
	}
	
	
}	
