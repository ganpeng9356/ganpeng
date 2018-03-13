package com.yt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yt.dao.CommodityDao;
import com.yt.entity.Commodity;
import com.yt.service.CommodityService;

@Service
public class CommodityServiceImpl implements CommodityService {

	@Autowired
	private CommodityDao commodityDao;
	
	/**
	 * 添加商品
	 */
	public boolean addCommodity(Commodity commodity) {
		return commodityDao.addCommodity(commodity);
	}
 
	/**
	 * 查询商品
	 */
	public List<Commodity> selectCommodity(){
		return commodityDao.selectCommodity();
	}
	
	public boolean updateCommodity(int cid){
		return commodityDao.updateCommodity(cid);
	}
	
	public List<Commodity> commodityAsses(String cname){
		return commodityDao.commodityAsses(cname);
	}
}
