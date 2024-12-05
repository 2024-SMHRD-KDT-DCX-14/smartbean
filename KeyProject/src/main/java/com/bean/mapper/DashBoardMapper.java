package com.bean.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.bean.entity.OrderDetailDTO;
import com.bean.entity.OrderMasterDTO;

@Mapper
public interface DashBoardMapper {
	public List<OrderDetailDTO> bymenuchart(Map<String, Object> para);
	public List<OrderDetailDTO> bydatechart(Map<String, Object> para);
	public List<OrderDetailDTO> menutotalchart(String memId);
	public List<OrderDetailDTO> menudaychart(String memId);
	public List<OrderDetailDTO> menuweekchart(String memId);
	public List<OrderDetailDTO> menumonthchart(String memId);
	public List<OrderDetailDTO> drinkchart(String memId);
	public List<OrderDetailDTO> dessertchart(String memId);
	public List<OrderMasterDTO> daychart(String memId);
	public List<OrderMasterDTO> weekchart(String memId);
	public List<OrderMasterDTO> monthchart(String memId);
	public List<OrderMasterDTO> quaterchart(String memId);
}
