package com.yt.dao;

import java.util.List;

import com.yt.entity.Commodity;

public interface CommodityDao {

	/**
	 * 添加商品
	 * @param commodity
	 * @return
	 */
	boolean addCommodity(Commodity commodity);
	
	/**
	 * 查询农产品
	 * @return
	 */
	List<Commodity> selectCommodity();
	/**
	 * 根据id购买农产品
	 * @param cid
	 * @return
	 */
	boolean updateCommodity(int cid);
	
	/**
	 * 查询农产品用于购买评估
	 * @return
	 */
	List<Commodity> commodityAsses(String cname);
}
