package com.bean.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.entity.MaterialDTO;
import com.bean.mapper.MaterialMapper;

@Controller
public class ProductController {

	@Autowired
	private MaterialMapper materialMapper;

	@GetMapping("/productTable")
	public String productTable(Model model) {
		List<MaterialDTO> products = materialMapper.productlist();
		model.addAttribute("list", products);
		return "productTable"; // JSP 파일 이름
	}
}
