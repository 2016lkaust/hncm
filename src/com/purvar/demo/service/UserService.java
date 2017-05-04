/**
 * 
 */
package com.purvar.demo.service;

import java.util.List;

import com.purvar.demo.model.PageObject;
import com.purvar.demo.model.User;

/**
 * @author chengfan
 *
 */
public interface UserService {
	
	/**
	 * login
	 * @param userInfo userInfo
	 * @return map
	 */
	String login(User user);

	/**
	 * 
	 * @param page
	 * @param pageSize
	 * @return
	 */
	List<User> getUserList(PageObject pageObj);

}
