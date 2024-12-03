package com.bean.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bean.entity.MaterialDTO;
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
	
	// 주문 마스터 조회 (status가 완료인 것)
	public List<OrderMasterDTO> viewOrderList(String memId);
	   
	// 주문 마스터 조회 (status가 준비중 인것만)
	public List<OrderMasterDTO> statusOrderList(String memId);
	
	// 주문 상세내역 조회 (status가 준비중인 것을 누르면 해당 번호에 맞는 상세내역을 출력)
	public List<OrderDetailDTO> viewOrderDetail(String memId);

	// 주문 상세내역 조회( 상태가 완료인것)
	public List<OrderDetailDTO> CompleteOrderDetail(String memId);
	
	
	// 상태 업데이트 준비중 -> 완료로
	public int statusUpdate(String memId, int orderMasterNumber);
	
	// 주문마스터 주문취소 
	public int orderMasterDelete(String memId, int orderMasterNumber);
	
	// 주문디테일 주문 취소
	public int orderDetailDelete(String memId, int orderDetailNumber);
	
	// 재고 차감하기 전 수량과 아이템 코드 불러오기 (주문 디테일 테이블)
	public List<OrderDetailDTO> orderDetailCheck(String memId, int orderDetailNumber);
	
	// 재고 조회해서 가져오기
	public List<MaterialDTO> stockCheck(String memId, String mrName);
	
	
	
}
