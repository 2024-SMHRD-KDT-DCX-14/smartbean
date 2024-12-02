package com.bean.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@AllArgsConstructor
@Data
public class OrderDetailDTO {
	private int orderDetailNumber; // 주문번호
	private String orderDetailCode; // 상품코드
	private int orderDetailAmt; // 해당상품 총 양
	private int orderDetailPrice; // 해당 상품 총 금액
	
    private String menuName;     // 메뉴이름 받아오기
}

