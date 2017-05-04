package com.purvar.demo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.purvar.demo.dao.TypeDao;
import com.purvar.demo.model.Type;
import com.purvar.demo.service.TypeService;

@Service("typeService")
@Transactional
public class TypeServiceImpl implements TypeService {
	@Resource
	private TypeDao typeDao;

	@Override
	public List<Type> getTypes() {
		// TODO Auto-generated method stub
		return typeDao.getTypes();
	}

}
