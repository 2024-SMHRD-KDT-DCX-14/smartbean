package com.bean.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.mapper.OrderMapper;

@Controller
public class OrderListController {

	@Autowired
	private OrderMapper mapper;
	
	@RequestMapping("/goOrder")
	public String goOrder() {
		return "order";
	}
	
	@RequestMapping("/orderlist") 
	 public String orderlist() {
		
		
	    return "order";
	 	}
	
}
