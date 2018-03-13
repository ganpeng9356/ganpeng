package com.yt.dao;

import com.yt.entity.Student;

public interface StudentDao {

	/**
	 * 通过id查询单个学生
	 * @return
	 */
	Student queryById(int uid);
}
