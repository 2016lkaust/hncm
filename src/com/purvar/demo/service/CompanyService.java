package com.purvar.demo.service;

import java.util.List;
import java.util.Map;

import com.purvar.demo.model.Company;
import com.purvar.demo.model.Company1;
import com.purvar.demo.model.PageObject;

public interface CompanyService {
	/**
	 * @return
	 */
	// List<Company> selectAllCompany(PageObject pageObj);
	/**
	 * Company1是Company的拓展类，增加了tname字段，用于存储查询到的类型名称
	 * 
	 * @param pageObj
	 * @return
	 */
	List<Company1> selectCompanyList(PageObject pageObj);

	/**
	 * 通过公司id获取公司全部信息
	 * 
	 * @param cid
	 * @return
	 */
	Company1 getCompany(int cid);

	/**
	 * 统计注册公司和
	 * 
	 * @return
	 */
	int count();

	/**
	 * 统计注册公司的注册资金和
	 * 
	 * @return
	 */
	float countMoney();

	/**
	 * 统计各地区公司数
	 * 
	 * @return list<Map<String,Object>>：[{count=2, name=丰台区}, {count=7,
	 *         name=田家庵}, {count=1, name=大通区}, {count=1, name=八公山区}, {count=4,
	 *         name=寿县}]
	 * 
	 *         map：{count=2,name=丰台区}
	 */
	List<Map<String, Object>> groupByLocation();

	/**
	 * 根据注册资金分组统计公司数
	 * 
	 * @return list<Map<String,Object>>:[{level=LEVEL2, count=6}, {level=LEVEL1,
	 *         count=1}, {level=LEVEL3, count=1}, {level=LEVEL4, count=7}]
	 *         map:{level=LEVEL2, count=6}
	 */
	List<Map<String, Object>> groupByFund();

	/**
	 * 根据注册月份分组统计公司数
	 * 
	 * @return
	 */
	List<Map<String, Object>> groupByMonth();

}
