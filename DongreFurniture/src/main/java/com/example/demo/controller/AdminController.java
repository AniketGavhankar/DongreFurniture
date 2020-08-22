package com.example.demo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.MainTypeModel;
import com.example.demo.service.MainTypeService;

@Controller
public class AdminController {
	
	@Autowired
	MainTypeService mainTypeService;

	@RequestMapping("/")
	public String adminMaster() {
		return "AdminMaster";
	}

	@RequestMapping("/MainType")
	public String mainType() {

		return "MainType";
	}

	@RequestMapping(value = "/SaveMainType", method = RequestMethod.POST)
	public ModelAndView saveMainType(MainTypeModel model) {
		ModelAndView m = new ModelAndView();

		boolean b = mainTypeService.isAddMainType(model);
		if (b) {
			m.addObject("msg", "MainType Added Successfully............");
		} else {
			m.addObject("msg", "Some problem is there....................");
		}
		m.setViewName("MainType");
		return m;
	}

	@RequestMapping("/viewrecord")
	public String viewMainTypeUrl() {
		return "ViewMainType";
	}

	@GetMapping(value = "/viewall", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<MainTypeModel> ViewMainType() {
		return mainTypeService.getAllMainTypes();
	}

	
	@GetMapping("/updateMainType")
	public String updateMainType(@RequestParam("maintypeid") String maintypeid,@RequestParam("name") String name,Map<String, String>  map)
	{
		 map.put("id",maintypeid);
		 map.put("name",name);
		return "deleteRecord";
	}
	@RequestMapping("/addsubtype")
	public String addSubType()
	{
		return "AddSubType";
	}
}









