package com.example.demo.service;

import java.util.List;

import com.example.demo.model.MainTypeModel;

public interface MainTypeService {
	
	public boolean isAddMainType(MainTypeModel model);
	public List<MainTypeModel> getAllMainTypes();
	public List<MainTypeModel> findAll();
	public void isDeleteMainType(int parseInt);
	public boolean isUpdate(MainTypeModel model);
	
	
	 

}
