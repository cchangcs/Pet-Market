package com.petmarket.service;

import java.util.List;

import com.petmarket.dao.PetDao;
import com.petmarket.entities.Pet;

public class PetService {

	private PetDao petDao;

	public PetDao getPetDao() {
		return petDao;
	}

	public void setPetDao(PetDao petDao) {
		this.petDao = petDao;
	}
	
	public List<Pet> getAll(){
		List<Pet> pets = petDao.getAll();
		for (int i = 0; i < pets.size(); i++) {
			pets.get(i).setPictures(petDao.getPics(pets.get(i).getPetId()));
		}
		return pets;
	}
	
	public Pet getPetDetail(Integer petId){
		Pet pet = petDao.getPetDetail(petId);
		pet.setPictures(petDao.getPics(petId));
		return pet;
	}
	
}
