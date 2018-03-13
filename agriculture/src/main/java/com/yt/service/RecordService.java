package com.yt.service;

import java.util.List;

import com.yt.entity.Record;

public interface RecordService {

	/**
	 * 添加商品记录
	 * @param record
	 * @return
	 */
   public boolean addRecord(Record record);	
   /**
    * 查询商品记录
    * @param ID
    * @return
    */
   public List<Record> selectRecord(String ID);
}
