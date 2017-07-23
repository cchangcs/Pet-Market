package com.petmarket.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.petmarket.entities.Pet;
import com.petmarket.entities.ShoppingCart;
import com.petmarket.entities.User;
import com.petmarket.service.ShoppingCartService;

public class ShoppingCartAction extends ActionSupport implements SessionAware,RequestAware{
	private ShoppingCartService shoppingCartService;
	
	public void setShoppingCartService(ShoppingCartService shoppingCartService) {
		this.shoppingCartService = shoppingCartService;
	}
	
	public ShoppingCartService getShoppingCartService() {
		return shoppingCartService;
	}
	
	private Integer petNum;

	private Integer petId;
	
	public void setPetNum(Integer petNum) {
		this.petNum = petNum;
	}
	
	public void setPetId(Integer petId) {
		this.petId = petId;
	}
	
	//添加商品到购物车
	public String addToShoppingCart(){
		User user = null;
		if(session.get("user") != null){
			user = (User)session.get("user");
		}
		ShoppingCart shoppingCart = new ShoppingCart(user.getPhoneNumber(), petId, petNum);
		shoppingCartService.addToShoppingCart(shoppingCart);
		return "shoppingcart";
	}

	//获取购物车中的所有宠物
	public String getPetsFromShoppingCart(){
		User user = null;
		if(session.get("user") != null){
			user = (User)session.get("user");
		}
		List<Pet> pets = shoppingCartService.getPetsFromShoppingCart(user.getPhoneNumber());
		request.put("cartPets", pets);
		return "pets";
	}
	
	private InputStream inputStream;
	
	public InputStream getInputStream() {
		return inputStream;
	}
	
	//获取商品总价
	public String getTotalPrice(){
		List<Integer> data = convertToInt(items);
		User user = null;
		if(session.get("user") != null){
			user = (User)session.get("user");
		}
		int totalPrice = 0;
		for (int i = 0;i<data.size();i++) {
			totalPrice += shoppingCartService.getPetPrice(user.getPhoneNumber(), data.get(i));
		}
		try {
			inputStream = new ByteArrayInputStream((totalPrice+"").getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "totalPrice";
	}
	
	private Map<String,Object> session;
	
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	private Map<String,Object> request;
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

	private String items;
	
	public void setItems(String items) {
		this.items = items;
	}
	
	public List<Integer> convertToInt(String items){
		String[] data = items.split(",");
		List<Integer> result = new ArrayList<Integer>();
		for (int i= 0 ;i<data.length;i++) {
			result.add(Integer.parseInt(data[i]));
		}
		return result;
	}
	
	public String deleteItem(){
		List<Integer> data = convertToInt(items);
		User user = null;
		if(session.get("user") != null){
			user = (User)session.get("user");
		}
		for(int i = 0;i<data.size();i++){
			shoppingCartService.deleteItem(data.get(i), user.getPhoneNumber());
		}
		return "delete";
	}

}
