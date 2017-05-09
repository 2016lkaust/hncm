package com.purvar.demo.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.purvar.demo.action.base.BaseAction;
import com.purvar.demo.model.Area;
import com.purvar.demo.model.City;
import com.purvar.demo.model.Company1;
import com.purvar.demo.model.PageObject;
import com.purvar.demo.model.Type;
import com.purvar.demo.service.AreaService;
import com.purvar.demo.service.CityService;
import com.purvar.demo.service.CompanyService;
import com.purvar.demo.service.TypeService;

@Controller
@Scope("prototype")
public class CompanyAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	@Autowired
	private CompanyService companyService;
	@Autowired
	private CityService cityService;
	@Autowired
	private AreaService areaService;
	@Autowired
	private TypeService typeService;
	private Integer cid;
	Company1 company;

	public void setCompany(Company1 company) {
		this.company = company;
	}

	public Company1 getCompany() {
		return company;
	}

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	/**
	 * 获取所有企业信息（数据模型为拓展类Company1），并将其以json类型返回给前端
	 * 
	 * @throws Exception
	 */
	public void getCompanyList() throws Exception {
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
			pageObj.setPage((page1 - 1) * pageSize1);
			pageObj.setPageSize(pageSize1);
			// 查询订单详情信息
			List<Company1> companies = this.companyService
					.selectCompanyList(pageObj);
			// List<Company> companies =
			// this.companyService.selectAllCompany(pageObj);
			// 遍历
			// for (int i = 0; i < companies.size(); i++) {
			// System.out.println(companies.get(i).getAddress());
			// System.out.println(companies.get(i).getRegisteredTime());
			// System.out.println(companies.get(i).getTname());
			// }
			int totalnum = companyService.count();
			respMap.put("status", "1");
			respMap.put("message", "获得成功！");
			respMap.put("data", companies);
			respMap.put("totalnum", totalnum);
		} catch (Exception e) {
			e.printStackTrace();
			respMap.put("status", "0");
			respMap.put("message", "获得公司信息失败！");
		}
		writeJSON(respMap);
	}

	/**
	 * 通过城市id获取城市信息
	 * 
	 * @throws Exception
	 */
	public void getCompanyInfo() throws Exception {
		Map<String, Object> respMap = new HashMap<String, Object>();
		try {
			System.out.println(cid);
			Company1 company1 = this.companyService.getCompany(cid);
			respMap.put("status", "1");
			respMap.put("message", "获得成功！");
			respMap.put("data", company1);
		} catch (Exception e) {
			e.printStackTrace();
			respMap.put("status", "0");
			respMap.put("message", "获得公司具体信息失败！");
		}
		writeJSON(respMap);
	}

	/**
	 * 获取所有城市信息
	 * 
	 * @throws Exception
	 */
	public void getCities() throws Exception {
		Map<String, Object> respMap = new HashMap<String, Object>();
		try {
			List<City> cities = this.cityService.getCities();
			// for (Area area : areas) {
			// System.out.println(area.getName());
			// }
			respMap.put("status", "1");
			respMap.put("message", "获得成功！");
			respMap.put("data", cities);
		} catch (Exception e) {
			e.printStackTrace();
			respMap.put("status", "0");
			respMap.put("message", "获得地区信息失败！");
		}
		writeJSON(respMap);
	}

	/**
	 * 由城市id获取地区信息
	 * 
	 * @throws Exception
	 */
	public void getAreasByCid() throws Exception {
		Map<String, Object> respMap = new HashMap<String, Object>();
		try {
			List<Area> areas = this.areaService.getAreasByCid(cid);
			// for (Area area : areas) {
			// System.out.println(area.getName());
			// }
			respMap.put("status", "1");
			respMap.put("message", "获得成功！");
			respMap.put("data", areas);
		} catch (Exception e) {
			e.printStackTrace();
			respMap.put("status", "0");
			respMap.put("message", "获得地区信息失败！");
		}
		writeJSON(respMap);
	}

	public void getTypes() throws Exception {
		Map<String, Object> respMap = new HashMap<String, Object>();
		try {
			List<Type> types = this.typeService.getTypes();
			// for (Area area : areas) {
			// System.out.println(area.getName());
			// }
			respMap.put("status", "1");
			respMap.put("message", "获得成功！");
			respMap.put("data", types);
		} catch (Exception e) {
			e.printStackTrace();
			respMap.put("status", "0");
			respMap.put("message", "获得地区信息失败！");
		}
		writeJSON(respMap);
	}

	/**
	 * 统计注册企业总数和总资产数
	 * 
	 * @throws Exception
	 */
	public void count() throws Exception {
		Map<String, Object> respMap = new HashMap<String, Object>();
		try {
			int totalnum = companyService.count();
			float totalmoney = companyService.countMoney();
			List<Map<String, Object>> location = companyService
					.groupByLocation();
			List<Map<String, Object>> fund = companyService.groupByFund();
			List<Map<String, Object>> month = companyService.groupByMonth();
			// System.out.println("size" + month.size());
			// System.out.println("list" + month);
			// System.out.println("map" + month.get(0));
//			for (Map<String, Object> map : month) {
//				System.out.println(map.get("count") + "****" + map.get("time"));
//			}
			// for (Area area : areas) {
			// System.out.println(area.getName());
			// }
			// System.out.println(totalmoney+" *************************** "+totalnum);
			respMap.put("status", "1");
			respMap.put("message", "获得成功！");
			respMap.put("totalnum", totalnum);
			respMap.put("totalmoney", totalmoney);
			respMap.put("location", location);
			respMap.put("fund", fund);
			respMap.put("month", month);
		} catch (Exception e) {
			e.printStackTrace();
			respMap.put("status", "0");
			respMap.put("message", "获得地区信息失败！");
		}
		writeJSON(respMap);
	}

	/**
	 * 添加公司信息
	 * 
	 * @throws Exception
	 */
	public void addCompany() throws Exception {
		Map<String, Object> respMap = new HashMap<String, Object>();
		try {
			int result = companyService.addCompany(company);
			respMap.put("status", "1");
			respMap.put("message", "数据插入成功！");
			System.out.println(result);

		} catch (Exception e) {
			e.printStackTrace();
			respMap.put("status", "0");
			respMap.put("message", "数据插入失败！");
		}
		writeJSON(respMap);
	}
/**
 * 删除公司信息
 * @throws Exception
 */
	public void deleteCompany() throws Exception {
		Map<String, Object> respMap = new HashMap<String, Object>();
		try {
			int result = companyService.deleteCompany(company.getId());
			respMap.put("status", "1");
			respMap.put("message", "数据删除成功！");
			System.out.println(result);

		} catch (Exception e) {
			e.printStackTrace();
			respMap.put("status", "0");
			respMap.put("message", "数据删除失败！");
		}
		writeJSON(respMap);
	}
	public void updateCompany() throws Exception{
		Map<String, Object> respMap = new HashMap<String, Object>();
		try {
			System.out.println(company.getAddress()+company.getTid());
			int result = companyService.updateCompany(company);
			respMap.put("status", "1");
			respMap.put("message", "数据更新成功！");
			System.out.println(result);

		} catch (Exception e) {
			e.printStackTrace();
			respMap.put("status", "0");
			respMap.put("message", "数据更新失败！");
		}
		writeJSON(respMap);
	}
}
