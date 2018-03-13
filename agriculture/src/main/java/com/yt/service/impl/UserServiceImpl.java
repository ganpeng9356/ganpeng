package com.yt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yt.dao.UserDao;
import com.yt.entity.User;
import com.yt.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	public boolean addUser(User user) {
     return userDao.addUser(user);
	}

	public int selectUser(User user){
		int i=userDao.selectUser(user);
		return i;
	}
	
	public List<User> inUser(String uname){
		return userDao.inUser(uname);
	}
	
	public boolean modifyUser(User user,String uname){
		return userDao.modifyUser(user,uname);
	}
}
