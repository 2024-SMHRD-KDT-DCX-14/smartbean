package com.bean.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bean.entity.OrderMasterDTO;

@Mapper
public interface OrderMapper {

	public int orderlist(); // 주문 마스터 리스트 담기

	public List<OrderMasterDTO> list();
	
	
	
	
}
