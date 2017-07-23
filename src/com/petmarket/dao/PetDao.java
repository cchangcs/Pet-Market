package com.petmarket.dao;

import java.util.List;

import com.petmarket.entities.Pet;
import com.petmarket.entities.PetPics;
import com.sun.corba.se.impl.interceptors.PICurrent;

public class PetDao extends BaseDao{

	public List<Pet> getAll(){
	
		String hql = "from Pet p";
		return getSession().createQuery(hql).list();
	}
		
	public List<PetPics> getPics(Integer id){
		String hql = "from PetPics p where p.pet.petId=?";
		return getSession().createQuery(hql).setInteger(0,id).list();
	}
	
	public Pet getPetDetail(Integer petId){
		String hql = "from Pet p where p.petId = ?";
		return (Pet) getSession().createQuery(hql).setInteger(0, petId).uniqueResult();
	}	
}
