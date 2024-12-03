package com.bean.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bean.entity.MemberDTO;
import com.bean.mapper.OrderMapper;

import jakarta.servlet.http.HttpSession;

@RestController
public class OrderDeleteRestController {

	@Autowired
	private OrderMapper mapper;
	
	@PostMapping("/orderdelete")
	public String orderDelete(@RequestBody HashMap<String, Object> paramMap, HttpSession session) {
		
		// 아이디 가져오기
		MemberDTO member = (MemberDTO)session.getAttribute("user");
		String memId = member.getMemId();
		
		// 주문번호 가져오기
		int orderDeleteNumber = (int)paramMap.get("orderDeleteNumber");
		
		
		mapper.orderDetailDelete(memId, orderDeleteNumber);
		mapper.orderMasterDelete(memId, orderDeleteNumber);
		
		session.setAttribute("user", member);
		
		return "redirect:/orderhistory";
	}
	
}
