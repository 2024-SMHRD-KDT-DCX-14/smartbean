package com.bean.mapper;


import org.apache.ibatis.annotations.Mapper;

import com.bean.entity.OrderDetailDTO;
import com.bean.entity.OrderMasterDTO;

@Mapper
public interface MainMapper {

	public OrderMasterDTO maxsales(String memId);
	
	public OrderMasterDTO minsales(String memId);
	
	public OrderDetailDTO maxmenu(String memId);
	
}
