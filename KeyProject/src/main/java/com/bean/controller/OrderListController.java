package com.bean.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.entity.MemberDTO;
import com.bean.entity.OrderDetailDTO;
import com.bean.entity.OrderMasterDTO;
import com.bean.mapper.OrderMapper;

import jakarta.servlet.http.HttpSession;

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
	public String tableList(Model model, HttpSession session) {

		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId();

		// select한 쿼리문 결과를 list에 담음
		List<OrderMasterDTO> viewOrderList = mapper.viewOrderList(memId);
		
		// 상태 준비중 select한 쿼리문 결과를 list에 담음
		List<OrderMasterDTO> statusOrderList = mapper.statusOrderList(memId); 

		model.addAttribute("viewOrderList", viewOrderList); // jsp에 값을 가져다 쓰기
		model.addAttribute("statusOrderList", statusOrderList);

		// 주문 상세 내역 조회 로직 -- 준비중인 상태
		List<OrderDetailDTO> viewOrderDetail = mapper.viewOrderDetail(memId);
		model.addAttribute("viewOrderDetail", viewOrderDetail);
		
	    // 주문 내역 상세 조회 로직 -- 완료인 상태만
	    List<OrderDetailDTO> completeViewDetail = mapper.CompleteOrderDetail(member.getMemId());
	    model.addAttribute("completeViewDetail", completeViewDetail);

	    
	    
		session.setAttribute("user", member);
		return "orderhistory"; // 다시 내역 페이지로 이동
		
		
		
		}
	


}
