/**
 * 
 */
package com.purvar.demo.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.purvar.demo.action.base.BaseAction;
import com.purvar.demo.model.PageObject;
import com.purvar.demo.model.User;
import com.purvar.demo.service.UserService;

/**
 * @author chengfan
 *
 */
@Controller
@Scope("prototype")
public class UserAction extends BaseAction {
	
	private static final long serialVersionUID = 4398583357767666616L;
	
	@Autowired
	private UserService userService;
	
	private String account;
	private String password;
	private String message;

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}

	public void Login() throws Exception{
		
		User user = new User();
		user.setAccount(account);
		user.setPwd(password);
		//登录成功时，res在UserServiceImpl中赋值0：res = GlobalGlossary.SUCCESS;
		String res = userService.login(user);

		this.message = account + " login :" + res;
		writeJSON(res);
//		return "Success";
	}

	/**
	 * get all user list 
	 * @throws Exception
	 */
	public void getUserList() throws Exception {
		Map<String, Object> respMap = new HashMap<String, Object>();
		try {
			String page = this.request.getParameter("page");
			String pageSize = this.request.getParameter("rows");
			if (page == null || "".equals(page))
				page = "1";
			if (pageSize == null || "".equals(pageSize))
				pageSize = "10";
			int page1 = Integer.parseInt(page);
			int pageSize1 = Integer.parseInt(pageSize);
			PageObject pageObj = new PageObject();
			//page：总偏移量，pageSize：每页显示记录数
			pageObj.setPage((page1 - 1) * pageSize1);
			pageObj.setPageSize(pageSize1);
			// 查询订单详情信息
			List<User> userList = this.userService.getUserList(pageObj);
			int count=this.userService.countUser();
			respMap.put("status", "1");
			respMap.put("message", "获得成功！");
			respMap.put("data", userList);
			respMap.put("count", count);

		} catch (Exception e) {
			e.printStackTrace();
			respMap.put("status", "0");
			respMap.put("message", "获得订单详情失败！");
		}

		writeJSON(respMap);
	}

}
