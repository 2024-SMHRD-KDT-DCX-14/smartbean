package com.bean.entity;

import lombok.Data;

@Data
public class OrderMasterDTO {
	
	private int orderMasterNumber; // 주문번호
	private int orderMasterTotal;  // 주문번호의 총 금액
	private int orderMasterTotalAmount; // 주문번호의 아이템 수량
	private String orderMasterDate; // 주문 일자
	private String status; // 주문 상태
	private String memId; // 회원ID
	
	
}
