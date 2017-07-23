package com.petmarket.entities;

import java.util.Date;

public class User {

	private String phoneNumber;// 主键，电话号码
	private String password;
	private ShoppingCart shoppingCart;// 采用1-1关联映射
	private String address;// 收货地址
	private String gender;// 性别
	private Date birthday;// 生日
	private String headerUrl;// 头像-->时间不够可以不实现

	public User() {

	}

	public User(String phoneNumber, String password, String address, String gender,
			Date birthday, String headerUrl) {
		super();
		this.phoneNumber = phoneNumber;
		this.password = password;
		this.address = address;
		this.gender = gender;
		this.birthday = birthday;
		this.headerUrl = headerUrl;
	}

	public String getHeaderUrl() {
		return headerUrl;
	}

	public void setHeaderUrl(String headerUrl) {
		this.headerUrl = headerUrl;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public ShoppingCart getShoppingCart() {
		return shoppingCart;
	}

	public void setShoppingCart(ShoppingCart shoppingCart) {
		this.shoppingCart = shoppingCart;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

}
