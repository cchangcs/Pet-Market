package com.petmarket.dao;

import java.util.List;

import com.petmarket.entities.Pet;
import com.petmarket.entities.PetPics;
import com.petmarket.entities.ShoppingCart;

public class ShoppingCartDao extends BaseDao{

	public List<ShoppingCart> getMyShoppingChart(String userId) {
		String hql = "from ShoppingCart s where s.userId=?";
		return getSession().createQuery(hql).setString(0, userId).list();
	}

	public Pet getPet(Integer petId){
		String hql = "from Pet p where p.petId = ?";
		return (Pet)getSession().createQuery(hql).setInteger(0, petId).uniqueResult();
	}
	
	public List<PetPics> getPics(Integer id){
		String hql = "from PetPics p where p.pet.petId=?";
		return getSession().createQuery(hql).setInteger(0,id).list();
	}
	
	
	public void saveOrUpdateShoppingCart(ShoppingCart shoppingCart) {
		getSession().saveOrUpdate(shoppingCart);
	}
	
	public ShoppingCart getExistedShoppingCart(ShoppingCart shoppingCart) {
		String hql = "from ShoppingCart s where s.userId=? and s.petId=?";
		return (ShoppingCart)getSession().createQuery(hql).setString(0,shoppingCart.getUserId()).setInteger(1, shoppingCart.getPetId()).uniqueResult();
	}
	
	public ShoppingCart getShoppingCart(String userId,Integer petId) {
		String hql = "from ShoppingCart s where s.userId=? and s.petId=?";
		return (ShoppingCart)getSession().createQuery(hql).setString(0,userId).setInteger(1, petId).uniqueResult();
	}
	
	public void updateNumberOfShoppingCart(ShoppingCart shoppingCart, Integer i) {
		shoppingCart.setNumber(shoppingCart.getNumber() + i);
		getSession().saveOrUpdate(shoppingCart);
	}
	
	
	public void deleteItem(Integer petId,String userId){
		String hql = "delete from ShoppingCart s where s.userId = ? and s.petId=?";
		getSession().createQuery(hql).setString(0,userId).setInteger(1, petId).executeUpdate();
	}

}
