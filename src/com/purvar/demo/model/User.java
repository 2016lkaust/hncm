/**
 * 
 */
package com.purvar.demo.model;

import com.purvar.demo.model.base.BaseUser;

/**
 * @author chengfan
 *
 */
public class User extends BaseUser{
	
	  	/**
		 * user name
		 */
		private String username;
		/**
		 * status
		 */
		private Integer status;
		
		/**
		 * created by
		 */
		private String createdby;
		/**
		 * created time
		 */
		private String createdtime;
		
		/**
		 * last modified by
		 */
		private String lastmodifiedby;
		/**
		 * last modified time
		 */
		private String lastmodifiedtime;
		/**
		 * @return the username
		 */
		public String getUsername() {
			return username;
		}
		/**
		 * @param username the username to set
		 */
		public void setUsername(String username) {
			this.username = username;
		}
		/**
		 * @return the status
		 */
		public Integer getStatus() {
			return status;
		}
		/**
		 * @param status the status to set
		 */
		public void setStatus(Integer status) {
			this.status = status;
		}
		/**
		 * @return the createdby
		 */
		public String getCreatedby() {
			return createdby;
		}
		/**
		 * @param createdby the createdby to set
		 */
		public void setCreatedby(String createdby) {
			this.createdby = createdby;
		}
		/**
		 * @return the createdtime
		 */
		public String getCreatedtime() {
			return createdtime;
		}
		/**
		 * @param createdtime the createdtime to set
		 */
		public void setCreatedtime(String createdtime) {
			this.createdtime = createdtime;
		}
		/**
		 * @return the lastmodifiedby
		 */
		public String getLastmodifiedby() {
			return lastmodifiedby;
		}
		/**
		 * @param lastmodifiedby the lastmodifiedby to set
		 */
		public void setLastmodifiedby(String lastmodifiedby) {
			this.lastmodifiedby = lastmodifiedby;
		}
		/**
		 * @return the lastmodifiedtime
		 */
		public String getLastmodifiedtime() {
			return lastmodifiedtime;
		}
		/**
		 * @param lastmodifiedtime the lastmodifiedtime to set
		 */
		public void setLastmodifiedtime(String lastmodifiedtime) {
			this.lastmodifiedtime = lastmodifiedtime;
		}
		
		
		
}
