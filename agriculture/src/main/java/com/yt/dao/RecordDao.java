package com.yt.dao;

import java.util.List;

import com.yt.entity.Record;


public interface RecordDao {

	/**
	 * 增加购物记录
	 * @return
	 */
	boolean addRecord(Record record);
	/**
	 * 查询商品记录
	 * @param ID
	 * @return
	 */
	List<Record> selectRecord(String ID);
}
