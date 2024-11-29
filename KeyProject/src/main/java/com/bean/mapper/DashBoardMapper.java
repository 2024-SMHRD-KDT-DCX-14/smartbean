package com.bean.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bean.entity.OrderDetailDTO;
import com.bean.entity.OrderMasterDTO;

@Mapper
public interface DashBoardMapper {
	public List<OrderDetailDTO> drinkchart();
	public List<OrderDetailDTO> dessertchart();
	public List<OrderMasterDTO> timechart();
	public List<OrderMasterDTO> daychart();
	public List<OrderMasterDTO> monthchart();
	public List<OrderMasterDTO> quaterchart();
}
