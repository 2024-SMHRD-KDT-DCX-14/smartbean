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
public class OrderListRestController {

	@Autowired
	private OrderMapper mapper;

	// 결제 후 DB에 저장
	// paramMap은 HTTP 요청과 함께 전달된 파라미터들을 key-value 쌍으로 담고 있는 Map 객체
	@PostMapping("/orderstore")
	public Map<String, Object> orderstore(@RequestBody HashMap<String, Object> paramMap, HttpSession session) {

		// 회원아이디 세션 가져옴
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId();

		String totalItems = (String) paramMap.get("totalItems"); // totalItems(key값) : totalItems, 총 수량
		String totalCost = (String) paramMap.get("totalCost"); // totalCost(key값) : totalCost, 총 비용

		// itemCode(key값) : itemCodeArray, 담긴 메뉴 코드 String
		List<String> itemCode = (List<String>) paramMap.get("itemCode");

		// orderItems(key값) : orderItemsArray, 담긴 메뉴 이름 String
		List<String> orderItems = (List<String>) paramMap.get("orderItems");

		// orderPrices(key값) : orderPriceArray, 담긴 메뉴 가격 String
		List<Integer> orderPrices = (List<Integer>) paramMap.get("orderPrices");

		// orderQuantities(key값) : orderItemQuantity 담긴 메뉴 수량 Integer
		List<Integer> orderQuantities = (List<Integer>) paramMap.get("orderQuantities");

		OrderMasterDTO orderMaster = mapper.sequenceNumber(); // 현재 주문번호가져오기.

		// 가져온 세션아이디 넣어주기
		orderMaster.setMemId(memId);
		// 총 가격 대입
		orderMaster.setOrderMasterTotal(Integer.parseInt(totalCost));
		// 총 수량
		orderMaster.setOrderMasterTotalAmount(Integer.parseInt(totalItems));

		// 마스터테이블 저장 실행!
		int result = mapper.orderListMaster(orderMaster);

		// 디테일테이블 저장 로직
		
		OrderDetailDTO orderDetail = new OrderDetailDTO();

		int number = orderMaster.getOrderMasterNumber();
		System.out.println(number);

		if (result > 0) {

			for (int i = 0; i < itemCode.size(); i++) {

				orderDetail.setOrderDetailNumber(number + 1);
				orderDetail.setOrderDetailCode(itemCode.get(i));
				orderDetail.setOrderDetailAmt(orderQuantities.get(i));
				orderDetail.setOrderDetailPrice(orderPrices.get(i) * orderQuantities.get(i));
				mapper.orderListDetail(orderDetail);

			}
			
			
			for(int j=0; j < itemCode.size(); j++) {
				
				
			}
			
			
			
		}
		
		
		
		
		session.setAttribute("user", member);

		// 재고 빼기 로직
		
		
		
		
		
		
		
		
		return paramMap;
	}

}