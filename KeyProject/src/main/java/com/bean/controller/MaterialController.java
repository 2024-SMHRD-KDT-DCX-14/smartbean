package com.bean.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;


import com.bean.entity.MaterialDTO;
import com.bean.mapper.MaterialMapper;




@Controller
public class MaterialController {

	@Autowired
	private MaterialMapper mapper;
	
//	@RequestMapping("/materialView")
//	public String go() {
//
//		return "materialView";
//	}
	
	@RequestMapping("/materialregister") 
	 public String goregister() {
	    return "materialregister";
	 	}
	
	
	//조회로직
	@RequestMapping("/materialView")
	public String list(Model model) {
		// 1. 데이터 수집
		// 2. 기능 실행
		List<MaterialDTO> list = mapper.list();
		System.out.println("list : "+list);
		model.addAttribute("list",list);
		// 3. View 이동
		return "materialView";	
	}
	

	
}
