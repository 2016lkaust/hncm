/**
 * 
 */
package com.purvar.demo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.purvar.demo.dao.UserDao;
import com.purvar.demo.model.PageObject;
import com.purvar.demo.model.User;
import com.purvar.demo.service.UserService;
import com.purvar.demo.util.GlobalGlossary;

/**
 * @author chengfan
 *
 */
@Component("userService")
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	/** logger */
	private static Logger log = Logger.getLogger(UserServiceImpl.class);
	/**
	 * 用户数据操作
	 */

	@Resource
	private UserDao userDao;
    
	@Override
	public String login(User user) {
		log.debug("---enter login()");
		String res = GlobalGlossary.FAIL;
		if (userDao.finUserByAccountAndPwd(user) != null) {
			res = GlobalGlossary.SUCCESS;
			//String token = "00008888";
			/**
			 * token是随机生成的,这里演示,写死
			 */
			//map.put("token", token);
		} else {
			log.error("account or password error");
			//map.put("status", GlobalGlossary.FAIL);
			res = GlobalGlossary.FAIL;
		}
		return res;
	}

	@Override
	public List<User> getUserList(PageObject pageObj) {
		return userDao.getAllUser(pageObj);
	}

	@Override
	public int countUser() {
		return userDao.count();
	}

}
