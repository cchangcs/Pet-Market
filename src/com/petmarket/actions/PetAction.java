package com.petmarket.actions;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.petmarket.service.PetService;

public class PetAction extends ActionSupport implements RequestAware{

	private PetService petService;

	public PetService getPetService() {
		return petService;
	}

	public void setPetService(PetService petService) {
		this.petService = petService;
	}
	
	public String getAll(){
		
		request.put("pets",petService.getAll());
		return "index";
	}

	private Integer petId;
	
	public void setPetId(Integer petId) {
		this.petId = petId;
	}
	
	public String getPetDetail(){
		request.put("pet", petService.getPetDetail(petId));
		return "details";
	}
	
	private Map<String,Object> request;	
	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.request = request;
	}
}
