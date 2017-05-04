package com.purvar.demo.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.purvar.demo.dao.CompanyDao;
import com.purvar.demo.model.Company;
import com.purvar.demo.model.Company1;
import com.purvar.demo.model.PageObject;
import com.purvar.demo.service.CompanyService;

@Service("companyService")
@Transactional
public class CompanyServiceImpl implements CompanyService {
	@Resource
	private CompanyDao companyDao;

//	@Override
//	public List<Company> selectAllCompany(PageObject pageObj) {
//		return companyDao.getAllCompany();
//	}

	/**
	 * 获取所有公司信息
	 */
	@Override
	public List<Company1> selectCompanyList(PageObject pageObj) {
		return companyDao.getCompanies();
	}

	/**
	 * 通过公司id获取公司信息
	 */
	@Override
	public Company1 getCompany(int cid) {
		return companyDao.getCompany(cid);
	}

	@Override
	public int count() {
		return companyDao.totalNum();
	}

	@Override
	public float countMoney() {
		return companyDao.totalMoney();
	}

	@Override
	public List<Map<String, Object>> groupByLocation() {
		return companyDao.groupByAid();
	}

	@Override
	public List<Map<String, Object>> groupByFund() {
		return companyDao.groupByMoney();
	}

	@Override
	public List<Map<String, Object>> groupByMonth() {
		return companyDao.groupByMonth();
	}
	
}
