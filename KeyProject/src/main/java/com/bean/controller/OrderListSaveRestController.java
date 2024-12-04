package com.bean.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public String ordersave(@RequestBody Map<String, Object> requestData, HttpSession session) {
//		@RequestBody HashMap<String, Object> paramMap
		
		// 받아온 값
//		System.out.println(paramMap);
		System.out.println("받아온 값 : "+requestData.get("orderNumber"));
		// 요청에서 orderMasterNumber 값 가져오기
		Object orderNumberObj = requestData.get("orderNumber");
        // Object를 String으로 변환
        String orderDetailNumber = orderNumberObj.toString();
		
		// 아이디
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId();

		// 주문번호
		// String을 int로 변환
		int orderNumber = Integer.parseInt(orderDetailNumber);
//		int ordernumber = (int) paramMap.get("orderNumber");

		//재고 차감
		List<OrderDetailDTO> detailMany = mapper.detailNumber(orderDetailNumber);//해당 주문의 상세주문 테이블의 인스턴스'들'
		for( int i=0; i<detailMany.size(); i++) {
			// detailMany.get(i) = 주문번호가 담긴 OrderDetailDTO의 '1개'인스턴스
			// '메뉴명'-조건식에 필요, '수량'-실행문에 필요
			// 이걸 여기서, 메뉴별의 수량별, 원재료 종류별 몇개 차감해야하는지하는 로직을 여기서 짜고,
			if(detailMany.get(i).getMenuName().equals("아메리카노(ICE)")) {
				// 재고 조회해서, 업데이트할 인스턴스 가져오기.
				for(int j=0; j<detailMany.get(i).getOrderDetailAmt(); j++) {
					mapper.bean();
					mapper.cup();
					mapper.straw();
				}
				
			}else if(detailMany.get(i).getMenuName().equals("아메리카노(HOT)")) {

				for(int j=0; j<detailMany.get(i).getOrderDetailAmt(); j++) {
					mapper.bean();
					mapper.cup();
					mapper.straw();
				}
				
			}else if(detailMany.get(i).getMenuName().equals("카페라떼(ICE)")) {
				
				for(int j=0; j<detailMany.get(i).getOrderDetailAmt(); j++) {
					mapper.bean();
					mapper.milk();
					mapper.cup();
					mapper.straw();
				}
				
			}else if(detailMany.get(i).getMenuName().equals("카페라떼(HOT)")) {
				
				for(int j=0; j<detailMany.get(i).getOrderDetailAmt(); j++) {
					mapper.bean();
					mapper.milk();
					mapper.cup();
					mapper.straw();
				}
				
			}else if(detailMany.get(i).getMenuName().equals("카푸치노(ICE)")) {
				
				for(int j=0; j<detailMany.get(i).getOrderDetailAmt(); j++) {
					mapper.bean();
					mapper.milk();
					mapper.cup();
					mapper.straw();
				}
				
			}else if(detailMany.get(i).getMenuName().equals("카푸치노(HOT)")) {
				
				for(int j=0; j<detailMany.get(i).getOrderDetailAmt(); j++) {
					mapper.bean();
					mapper.milk();
					mapper.cup();
					mapper.straw();
				}
				
			}else if(detailMany.get(i).getMenuName().equals("티라미수")) {
				
				for(int j=0; j<detailMany.get(i).getOrderDetailAmt(); j++) {
					mapper.tiramisu();
				}
				
			}else{// 치즈케익
				
				for(int j=0; j<detailMany.get(i).getOrderDetailAmt(); j++) {
					mapper.cheese();
				}
				
			}
		}
		
		
		
		// 완료로 상태 업데이트
		mapper.statusUpdate(memId, orderNumber);



//		List<OrderDetailDTO> orderDetailcheck = (List<OrderDetailDTO>) mapper.orderDetailCheck(memId, ordernumber);
//		System.out.println(orderDetailcheck);
		
		session.setAttribute("user", member);

		return "redirect:/orderhistory";
	}

}
