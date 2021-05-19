package com.clone.line.model;

public class SearchCondition {
	private String word = "";
	private int pg = 1;
	private int spp = 20;
	private int start;
	private String data;
	
	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getWord() {
		return word;
	}
	
	public void setWord(String word) {
		this.word = '%'+word+'%';
	}
	
	public int getPg() {
		return pg;
	}

	public void setPg(int pg) {
		this.pg = pg;
	}
	
	public int getSpp() {
		return spp;
	}

	public void setSpp(int spp) {
		this.spp = spp;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}
}
