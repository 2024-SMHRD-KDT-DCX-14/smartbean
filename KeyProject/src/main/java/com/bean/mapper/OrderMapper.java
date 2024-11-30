package com.bean.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bean.entity.OrderDetailDTO;
import com.bean.entity.OrderMasterDTO;

@Mapper
public interface OrderMapper {

	// 주문 번호 가져오기
	public OrderMasterDTO sequenceNumber();
	
	
	// 주문 마스터 담기
	public int orderListMaster(OrderMasterDTO orderMaster); 
	
	// 주문 디테일 담기
	public int orderListDetail(OrderDetailDTO orderDetail);
	
	// 주문 마스터 조회
	public List<OrderMasterDTO> orderList_1();
	   
	  
	
}
