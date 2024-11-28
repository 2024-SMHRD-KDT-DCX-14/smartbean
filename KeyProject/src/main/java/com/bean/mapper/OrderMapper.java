package com.bean.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderMapper {

	public int orderlist(); // 주문 마스터 리스트 담기
	
}
