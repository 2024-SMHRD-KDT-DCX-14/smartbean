package com.bean.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bean.entity.OrderDetailDTO;
import com.bean.entity.OrderMasterDTO;
import com.bean.mapper.DashBoardMapper;

@RestController
public class DashBoardRestController {
	@Autowired
	private DashBoardMapper mapper;
	
	
	@RequestMapping("/drinkchart")
	public List<OrderDetailDTO> drinkchart() {
		List<OrderDetailDTO> list = mapper.drinkchart();
		
		return list;
	}
	
	@RequestMapping("/dessertchart")
	public List<OrderDetailDTO> dessertchart() {
		List<OrderDetailDTO> list = mapper.dessertchart();
		
		return list;
	}
	
	@RequestMapping("/timechart")
	public List<OrderMasterDTO> timechart() {
		List<OrderMasterDTO> list = mapper.timechart();
		
		return list;
	}
	
	@RequestMapping("/daychart")
	public List<OrderMasterDTO> daychart() {
		List<OrderMasterDTO> list = mapper.daychart();
		
		return list;
	}
	
	@RequestMapping("/monthchart")
	public List<OrderMasterDTO> monthchart() {
		List<OrderMasterDTO> list = mapper.monthchart();
		
		return list;
	}
	
	@RequestMapping("/quaterchart")
	public List<OrderMasterDTO> quaterchart() {
		List<OrderMasterDTO> list = mapper.quaterchart();
		
		return list;
	}
}
