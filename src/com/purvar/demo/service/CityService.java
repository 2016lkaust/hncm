package com.purvar.demo.service;

import java.util.List;

import com.purvar.demo.model.City;

public interface CityService {
	/**
	 * 查询出所有城市
	 * @return
	 */
	List<City> getCities();
}
