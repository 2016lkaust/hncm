package com.purvar.demo.service;

import java.util.List;

import com.purvar.demo.model.Area;

public interface AreaService {
/**
 * 通过城市编号cid获取地区名称
 * @return
 */
public List<Area> getAreasByCid(Integer cid);
}
