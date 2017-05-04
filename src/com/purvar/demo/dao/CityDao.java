package com.purvar.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.purvar.demo.model.City;
@Repository
public interface CityDao {

    int deleteByPrimaryKey(Integer id);

    int insert(City record);

    int insertSelective(City record);

    City selectByPrimaryKey(Integer id);
    int updateByPrimaryKeySelective(City record);

    int updateByPrimaryKey(City record);
    /**
     * 获取所有城市信息
     * @return
     */
    List<City> getAllCities();
}