package com.yt.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yt.entity.User;

public interface UserDao {

	/**
	 * 增加用户
	 * @param user
	 */
	boolean addUser(User user);
	
	/**
	 * 登录
	 * @param user
	 * @return
	 */
	int selectUser(User user);
	
	/**
	 * 根据名字查询用户
	 * @param uname
	 * @return
	 */
	List<User> inUser(String uname);
	
	/**
	 * 修改用户信息
	 * @param uname
	 * @return
	 */
	boolean modifyUser(@Param("user") User user,@Param("uname") String uname);
}
