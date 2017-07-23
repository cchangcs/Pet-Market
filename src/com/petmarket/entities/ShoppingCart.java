package com.petmarket.entities;

import java.util.List;
import java.util.Set;

public class ShoppingCart {

	private Integer shoppingCartId;// 购物车ID
	private String userId;//用户
	private Integer petId;
	private Integer number;
	
	public ShoppingCart() {

	}
	
	public ShoppingCart(String userId, Integer petId, Integer number) {
		super();
		this.userId = userId;
		this.petId = petId;
		this.number = number;
	}

	public Integer getShoppingCartId() {
		return shoppingCartId;
	}

	public void setShoppingCartId(Integer shoppingCartId) {
		this.shoppingCartId = shoppingCartId;
	}


	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Integer getPetId() {
		return petId;
	}

	public void setPetId(Integer petId) {
		this.petId = petId;
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}
	
}
