package com.purvar.demo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.purvar.demo.dao.AreaDao;
import com.purvar.demo.model.Area;
import com.purvar.demo.service.AreaService;

@Service("areaService")
@Transactional
public class AreaServiceImpl implements AreaService {
	@Resource
	private AreaDao areaDao;

	@Override
	public List<Area> getAreasByCid(Integer cid) {
		// TODO Auto-generated method stub
		return areaDao.getAreasByCid(cid);
	}

}
