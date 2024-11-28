package com.bean.controller;


import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

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

	//재고 등록 웹페이지로 이동
	@RequestMapping("/itemInsert")
	public void writerBoard() {

	}
	
	//재고등록 로직
	@RequestMapping("/insert")
	public String write(MaterialDTO material) {
		
		int cnt = mapper.insert(material);
		if(cnt>0) {
			System.out.println("재고등록 성공");
		}
		return "redirect:/table";
	}
	
	
	//재고 수정 웹페이지로 이동
	@RequestMapping("/itemUpdate")
	public void updateItem() {
		
	}
	
	//재고수정 로직
	@RequestMapping("/update")
	public String update(MaterialDTO material) {
		
		int cnt = mapper.update(material);
		if(cnt>0) {
			System.out.println("재고수정 성공");
		}
		return "redirect:/table";
	}
	
	
	
	
	//재고내역 삭제
	@RequestMapping("/delete/{mrCode}")
	public String delete( @PathVariable("mrCode") String mrCode ) {

		mapper.delete(mrCode);
		
		return "redirect:/table";
	}
	
}
