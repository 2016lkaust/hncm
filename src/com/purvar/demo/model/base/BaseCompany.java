package com.purvar.demo.model.base;

public class BaseCompany {
	private Integer id;

	private String name;

	private String corporation;

	private String tel;

	private float registeredCaptial;

	private String registeredTime;

	private String address;

	private Integer aid;

	private Integer tid;

	private String scope;

	// private String tname;
	//
	// public String getTname() {
	// return tname;
	// }
	//
	// public void setTname(String tname) {
	// this.tname = tname;
	// }

	public String getName() {
		return name;
	}

	public float getRegisteredCaptial() {
		return registeredCaptial;
	}

	public void setRegisteredCaptial(float registeredCaptial) {
		this.registeredCaptial = registeredCaptial;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getCorporation() {
		return corporation;
	}

	public void setCorporation(String corporation) {
		this.corporation = corporation == null ? null : corporation.trim();
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel == null ? null : tel.trim();
	}


	public String getRegisteredTime() {
		return registeredTime;
	}

	public void setRegisteredTime(String registeredTime) {
		this.registeredTime = registeredTime == null ? null : registeredTime
				.trim();
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address == null ? null : address.trim();
	}

	public Integer getAid() {
		return aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public Integer getTid() {
		return tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public String getScope() {
		return scope;
	}

	public void setScope(String scope) {
		this.scope = scope == null ? null : scope.trim();
	}
}