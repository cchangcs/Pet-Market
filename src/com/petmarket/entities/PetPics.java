package com.petmarket.entities;

public class PetPics {
	
	public PetPics() {
		
	}
	
	private Integer picId;//ͼƬid
	private String picUrl;//ͼƬURL
	private Pet pet;	
	
	public Integer getPicId() {
		return picId;
	}
	public void setPicId(Integer picId) {
		this.picId = picId;
	}
	
	public String getPicUrl() {
		return picUrl;
	}
	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}
	public Pet getPet() {
		return pet;
	}
	public void setPet(Pet pet) {
		this.pet = pet;
	}
}
