package com.bean.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bean.entity.MemberDTO;
import com.bean.entity.OrderDetailDTO;
import com.bean.entity.OrderMasterDTO;
import com.bean.mapper.DashBoardMapper;

import jakarta.servlet.http.HttpSession;

@RestController
public class DashBoardRestController {
	@Autowired
	private DashBoardMapper mapper;
	
	// 메뉴별 차트
	@RequestMapping("/menuchart")
	public List<OrderDetailDTO> menuchart(HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId(); // 회원별 차트를 보기위해 세션의 memId를 가져와 memId에 넣음
		List<OrderDetailDTO> list = mapper.menuchart(memId); // mapper에 있는 menuchart() 실행시킨걸 list에 넣음
		
		return list;
	}
	
	@RequestMapping("/drinkchart")
	public List<OrderDetailDTO> drinkchart(HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId();
		List<OrderDetailDTO> list = mapper.drinkchart(memId);
		
		return list;
	}
	
	@RequestMapping("/dessertchart")
	public List<OrderDetailDTO> dessertchart(HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId();
		List<OrderDetailDTO> list = mapper.dessertchart(memId);
		
		return list;
	}
	
	@RequestMapping("/timechart")
	public List<OrderMasterDTO> timechart(HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId();
		List<OrderMasterDTO> list = mapper.timechart(memId);
		
		return list;
	}
	
	@RequestMapping("/daychart")
	public List<OrderMasterDTO> daychart(HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId();
		List<OrderMasterDTO> list = mapper.daychart(memId);
		
		return list;
	}
	
	@RequestMapping("/monthchart")
	public List<OrderMasterDTO> monthchart(HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId();
		List<OrderMasterDTO> list = mapper.monthchart(memId);
		
		return list;
	}
	
	@RequestMapping("/quaterchart")
	public List<OrderMasterDTO> quaterchart(HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId();
		List<OrderMasterDTO> list = mapper.quaterchart(memId);
		
		return list;
	}
}
