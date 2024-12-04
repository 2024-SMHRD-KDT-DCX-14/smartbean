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
	public String tableList(Model model, HttpSession session, @RequestParam(defaultValue = "1") int page) {

		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId();

		// 상태 준비중 select한 쿼리문 결과를 list에 담음
		List<OrderMasterDTO> statusOrderList = mapper.statusOrderList(memId);
		model.addAttribute("statusOrderList", statusOrderList);

		// 주문 상세 내역 조회 로직 -- 준비중인 상태
		List<OrderDetailDTO> viewOrderDetail = mapper.viewOrderDetail(memId);
		model.addAttribute("viewOrderDetail", viewOrderDetail);

		// 주문 내역 상세 조회 로직 -- 완료인 상태만
		List<OrderDetailDTO> completeViewDetail = mapper.CompleteOrderDetail(member.getMemId());
		model.addAttribute("completeViewDetail", completeViewDetail);

		// 페이징 해보기!
		// 전체 행 수가져오기
		int result = mapper.allCount(member.getMemId());

		int pageTotal = 0; // 총 페이지수
		
		
		if (result / 10 == 0) {
			pageTotal = result / 10;
		} else {
			pageTotal = result / 10 + 1;
		}

		model.addAttribute("pageTotal", pageTotal); // 속성 : 값

		// 주문 완료 내역
		List<OrderMasterDTO> pagingOrderList = mapper.pagingOrderList(memId, page);
		model.addAttribute("pagingOrderList", pagingOrderList);

		session.setAttribute("user", member);
		return "orderhistory"; // 다시 내역 페이지로 이동

	}

}
