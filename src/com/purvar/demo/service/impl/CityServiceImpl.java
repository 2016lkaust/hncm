package com.purvar.demo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.purvar.demo.dao.CityDao;
import com.purvar.demo.model.City;
import com.purvar.demo.service.CityService;

@Service("cityService")
@Transactional
public class CityServiceImpl implements CityService {
	@Resource
	private CityDao cityDao;

	@Override
	public List<City> getCities() {
		// TODO Auto-generated method stub
		return cityDao.getAllCities();
	}

}
