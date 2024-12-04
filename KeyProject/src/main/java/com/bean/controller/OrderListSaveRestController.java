package com.bean.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bean.entity.MemberDTO;
import com.bean.entity.OrderDetailDTO;
import com.bean.entity.OrderMasterDTO;
import com.bean.mapper.OrderMapper;

import jakarta.servlet.http.HttpSession;

@RestController
public class OrderListSaveRestController {

	@Autowired
	private OrderMapper mapper;

	// 재고 빼기 로직, 상태 업데이트
	@PostMapping("/ordersave")
	public String ordersave(@RequestBody HashMap<String, Object> paramMap, HttpSession session) {

		// 받아온 값
		System.out.println(paramMap);

		// 아이디
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId();

		// 주문번호
		int ordernumber = (int) paramMap.get("orderNumber");

		// 완료로 상태 업데이트
		mapper.statusUpdate(memId, ordernumber);

		// 재고 빼기 로직 짜기
		// (1) 해당번호 디테일 내역 가져오기

		List<OrderDetailDTO> orderDetailcheck = (List<OrderDetailDTO>) mapper.orderDetailCheck(memId, ordernumber);

		System.out.println(orderDetailcheck);


		session.setAttribute("user", member);

		return "redirect:/orderhistory";
	}

}
