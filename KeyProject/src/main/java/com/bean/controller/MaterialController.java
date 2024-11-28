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
	private MaterialMapper mapper;			// 원자재 조회 list()메소드가 있는 mapper 
	

	//조회로직
	@RequestMapping("/table")				// http://localhost:8089/table이란 url요청이 들어오면 이 메소드 실행
	public String tableList(Model model) {

		List<MaterialDTO> list = mapper.list(); // DAO= select한 쿼리문 결과를 list에 담음 
		
		System.out.println("list : "+list); // 출력되는지 이클립스 콘솔창에서 확인
		model.addAttribute("list",list);	// request scope의 가벼운 버전인 model객체에 저장해서, jsp에 값을 가져다 쓸수있게 만듬
		
		return "table";						// http://localhost:8089/table.jsp 로 이동.
	}

	
}
