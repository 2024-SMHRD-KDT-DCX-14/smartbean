package com.bean.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.entity.OrderMasterDTO;
import com.bean.mapper.OrderMapper;

import java.util.List;

@Controller
public class OrderListController {

	@Autowired
	private OrderMapper mapper;

	// 오더페이지 열기
	@RequestMapping("/goOrder")
	public String goOrder() {
		return "order";
	}

	@RequestMapping("/orderlist")
	public String orderlist() {

		return "order";
	}

	// 주문 내역 조회 로직
	@RequestMapping("/orderhistory")
	public String tableList(Model model) {
		List<OrderMasterDTO> viewOrderList = mapper.orderList_1(); // select한 쿼리문 결과를 list에 담음
		System.out.println("list : " + viewOrderList); // 값 가져오는지 디버깅 코드
		model.addAttribute("viewOrderList", viewOrderList); // jsp에 값을 가져다 쓰기
		
		return "orderhistory"; // 다시 내역 페이지로 이동
	}

}
