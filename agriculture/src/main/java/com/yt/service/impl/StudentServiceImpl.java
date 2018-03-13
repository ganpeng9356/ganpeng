package com.yt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yt.dao.StudentDao;
import com.yt.entity.Student;
import com.yt.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;
	
	public Student getById(int uid) {	
		return studentDao.queryById(uid);
	}

}
