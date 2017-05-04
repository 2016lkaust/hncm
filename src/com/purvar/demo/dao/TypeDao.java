package com.purvar.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.purvar.demo.model.Type;
@Repository
public interface TypeDao {

    int deleteByPrimaryKey(Integer id);

    int insert(Type record);

    int insertSelective(Type record);

    Type selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Type record);

    int updateByPrimaryKey(Type record);
    List<Type> getTypes();
}