package com.petmarket.dao;

import org.hibernate.Query;

import com.petmarket.entities.User;

public class UserDao extends BaseDao{
	
	public void saveOrUpdate(User user){
		getSession().saveOrUpdate(user);
	}

	public User search(String phoneNumber){
		String hql = "from User u where u.phoneNumber = ?";
		Query query = getSession().createQuery(hql).setString(0, phoneNumber);
		return (User) query.uniqueResult();
	}
}
