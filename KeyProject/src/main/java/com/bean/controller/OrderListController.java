package com.bean.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.entity.OrderMasterDTO;
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
	
	//주문 내역 조회 로직
	@RequestMapping("/orderhistory")
	public String tableList(Model model) {
		List<OrderMasterDTO> list = mapper.list(); // select한 쿼리문 결과를 list에 담음 
		System.out.println("list : "+list); // 값 가져오는지 디버깅 코드
		model.addAttribute("list",list);	// jsp에 값을 가져다 쓰기
		
		return "orderhistory";			//다시 내역 페이지로 이동
	}
	
	
	/*
	 * 주문 내역 삭제
	 * 
	 * @RequestMapping("/delete/{}") public String delete( @PathVariable("") String
	 * ) { mapper.delete();
	 * 
	 * return "redirect:/orderhistory"; }
	 */
	
}
