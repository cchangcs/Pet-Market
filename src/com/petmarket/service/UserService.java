package com.petmarket.service;

import com.petmarket.dao.UserDao;
import com.petmarket.entities.User;

public class UserService {

	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	public void saveOrUpdate(User user){
		userDao.saveOrUpdate(user);
	}
	
	public User search(String phoneNumber){
		return userDao.search(phoneNumber);
	}
}
