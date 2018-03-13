package com.yt.dao;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.yt.BaseTest;
import com.yt.entity.Record;

public class RecordDaoTest extends BaseTest{

	@Autowired
	private RecordDao recordDao;
	
	@Test
	public void test02(){
		Record record=new Record();
		record.setCid(2);
		record.setID("17");		
		record.setRpice("18");
		String dateStr = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		System.out.println(dateStr);
		record.setRtime(dateStr);
		recordDao.addRecord(record);
	}
}
