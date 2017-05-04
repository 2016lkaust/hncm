package com.purvar.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.purvar.demo.model.Area;
@Repository
public interface AreaDao {

    int deleteByPrimaryKey(Integer id);

    int insert(Area record);

    int insertSelective(Area record);
    int updateByPrimaryKeySelective(Area record);

    int updateByPrimaryKey(Area record);
/**
 * 
 * @param id
 * @return
 */
    Area selectById(Integer id);
    /**
     * 通过城市编号cid查询_area表
     * @return
     */
    List<Area> getAreasByCid(Integer cid);
}