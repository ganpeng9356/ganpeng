package com.yt.service;

import java.util.List;

import com.yt.entity.User;

public interface UserService {

	/**
	 * 添加用户
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
	 * 进入个人中心
	 * @param uname
	 * @return
	 */
	List<User> inUser(String uname);
	/**
	 * 修改个人信息
	 * @param uname
	 * @return
	 */
	boolean modifyUser(User user,String uname);
}
