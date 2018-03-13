package com.yt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yt.dao.RecordDao;
import com.yt.entity.Record;
import com.yt.service.RecordService;
@Service
public class RecordServiceImpl implements RecordService {

	@Autowired
	private RecordDao recordDao;
	
	public boolean addRecord(Record record) {
		return recordDao.addRecord(record);
	}

	public List<Record> selectRecord(String ID) {
		return recordDao.selectRecord(ID);
	}

}
