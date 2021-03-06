package com.purvar.demo.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.purvar.demo.model.Company1;
import com.purvar.demo.model.PageObject;
import com.purvar.demo.model.base.BaseCompany;

/**
 * 
 * @author look
 * 
 */
@Repository
public interface CompanyDao {

//	/**
//	 * 获取企业(company)表的基本信息
//	 * 
//	 * @return
//	 */
//	List<Company> getAllCompany();

	/**
	 * 拓展后的公司表信息，能将类型id对应的类型名称返回
	 * 
	 * @return
	 */
	List<Company1> getCompanies(PageObject pageObj);
	/**
	 * 根据id获取某个公司的信息
	 * @param id
	 * @return 
	 */
	Company1 getCompany(int id);
	/**
	 * 查询公司总数
	 * @return
	 */
	int totalNum();
	/**
	 * 查询所有公司注册资金和
	 * @return
	 */
	float totalMoney();
	/**
	 * 统计不同地区的公司数
	 * @return
	 */
	List<Map<String, Object>> groupByAid();
	/**
	 * 统计不同注册资金的公司数
	 * @return
	 */
	List<Map<String, Object>> groupByMoney();
	/**
	 * 统计不同月份注册的公司数
	 * @return
	 */
	List<Map<String, Object>> groupByMonth();
	/**
	 * 插入公司信息
	 * @param company
	 * @return
	 */
	int addCompany(Company1 company);
	/**
	 * 删除公司信息
	 * @param id
	 * @return
	 */
	int deleteCompanyById(int id);
	/**
	 * 更新公司信息
	 * @param id
	 * @return
	 */
	int updateCompanyById(Company1 company);
}