package com.purvar.demo.model;

import com.purvar.demo.model.base.BaseCompany;

public class Company1 extends BaseCompany {
	private String tname;
	private String cname;
	private Integer cid;
	public Integer getCid() {
		return cid;
	}
	
	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}


	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}
}