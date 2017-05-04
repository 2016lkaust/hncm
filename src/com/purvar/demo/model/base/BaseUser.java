/**
 * 
 */
package com.purvar.demo.model.base;

/**
 * @author chengfan
 *
 */
public class BaseUser {
	
	/**
	 * user name
	 */
	private Long uid;
	
	/**
	 * user name
	 */
	private String account;
	/**
	 * login password
	 */
	private String pwd;
	
	
	/**
	 * @return the uid
	 */
	public Long getUid() {
		return uid;
	}
	/**
	 * @param uid the uid to set
	 */
	public void setUid(Long uid) {
		this.uid = uid;
	}
	/**
	 * @return the account
	 */
	public String getAccount() {
		return account;
	}
	/**
	 * @param account the account to set
	 */
	public void setAccount(String account) {
		this.account = account;
	}
	/**
	 * @return the password
	 */
	public String getPwd() {
		return pwd;
	}
	/**
	 * @param password the password to set
	 */
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	
}
