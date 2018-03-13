package com.yt.service;

import java.util.List;

import com.yt.entity.Commodity;

public interface CommodityService {

	/**
	 * 添加商品
	 * @param commodity
	 * @return
	 */
	public boolean addCommodity(Commodity commodity);
	/**
	 * 查询商品
	 * @return
	 */
	public List<Commodity> selectCommodity();
	/**
	 * 购买商品
	 * @param cid
	 * @return
	 */
	public boolean updateCommodity(int cid);
	
	/**
	 * 根据名字查询商品
	 * @param cname
	 * @return
	 */
	public List<Commodity> commodityAsses(String cname);
}
