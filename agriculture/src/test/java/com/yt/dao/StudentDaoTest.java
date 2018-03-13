package com.yt.dao;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.yt.BaseTest;
import com.yt.entity.Student;

public class StudentDaoTest extends BaseTest {

	@Autowired
	private StudentDao studentDao;
	
	@Test
	public void test01(){
		int i=1;
		Student student=studentDao.queryById(i);
		System.out.println(student);
	}
}
