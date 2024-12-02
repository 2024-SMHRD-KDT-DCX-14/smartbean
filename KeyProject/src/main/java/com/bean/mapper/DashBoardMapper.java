package com.bean.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bean.entity.OrderDetailDTO;
import com.bean.entity.OrderMasterDTO;

@Mapper
public interface DashBoardMapper {
	public List<OrderDetailDTO> menuchart(String memId);
	public List<OrderDetailDTO> drinkchart(String memId);
	public List<OrderDetailDTO> dessertchart(String memId);
	public List<OrderMasterDTO> timechart(String memId);
	public List<OrderMasterDTO> daychart(String memId);
	public List<OrderMasterDTO> monthchart(String memId);
	public List<OrderMasterDTO> quaterchart(String memId);
}
