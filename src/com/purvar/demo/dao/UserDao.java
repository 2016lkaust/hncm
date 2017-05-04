/**
 * 
 */
package com.purvar.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.purvar.demo.model.PageObject;
import com.purvar.demo.model.User;

/**
 * @author chengfan
 *
 */
@Repository
public interface UserDao {
	
	@Select("SELECT uid, username, account, pwd, status, createdby, " +
			"createdtime,lastmodifiedby, lastmodifiedtime FROM t_users " +
			"where account = #{account} and pwd = #{pwd}")
	User finUserByAccountAndPwd(User user);

	List<User> getAllUser(PageObject pageObj);

}
