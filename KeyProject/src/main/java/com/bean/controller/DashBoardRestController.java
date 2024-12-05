package com.bean.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	// 메뉴별 기간 차트
	@RequestMapping("/bymenuchart")
	public List<OrderDetailDTO> bymenuchart(HttpSession session, @RequestParam("menu") String menu) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId(); // 회원별 차트를 보기위해 세션의 memId를 가져와 memId에 넣음

        // Map에 파라미터 추가
        Map<String, Object> para = new HashMap<>();
        para.put("memId", memId);
        para.put("menu", menu);

        // Mapper 호출
        return mapper.bymenuchart(para);
	}
	
	// 메뉴별 차트
	@RequestMapping("/menutotalchart")
	public List<OrderDetailDTO> menutotalchart(HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId(); // 회원별 차트를 보기위해 세션의 memId를 가져와 memId에 넣음
		List<OrderDetailDTO> list = mapper.menutotalchart(memId); // mapper에 있는 menutotalchart() 실행시킨걸 list에 넣음
		
		return list;
	}

	@RequestMapping("/menudaychart")
	public List<OrderDetailDTO> menudaychart(HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId(); // 회원별 차트를 보기위해 세션의 memId를 가져와 memId에 넣음
		List<OrderDetailDTO> list = mapper.menudaychart(memId); // mapper에 있는 menudaychart() 실행시킨걸 list에 넣음
		
		return list;
	}
	
	@RequestMapping("/menuweekchart")
	public List<OrderDetailDTO> menuweekchart(HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId(); // 회원별 차트를 보기위해 세션의 memId를 가져와 memId에 넣음
		List<OrderDetailDTO> list = mapper.menuweekchart(memId); // mapper에 있는 menuweekchart(() 실행시킨걸 list에 넣음
		
		return list;
	}
	
	@RequestMapping("/menumonthchart")
	public List<OrderDetailDTO> menumonthchart(HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId(); // 회원별 차트를 보기위해 세션의 memId를 가져와 memId에 넣음
		List<OrderDetailDTO> list = mapper.menumonthchart(memId); // mapper에 있는 menumonthchart() 실행시킨걸 list에 넣음
		
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
	
	@RequestMapping("/daychart")
	public List<OrderMasterDTO> daychart(HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId(); // 회원별 차트를 보기위해 세션의 memId를 가져와 memId에 넣음
		List<OrderMasterDTO> list = mapper.daychart(memId); // mapper에 있는 daychart() 실행시킨걸 list에 넣음
		
		return list;
	}
	
	@RequestMapping("/weekchart")
	public List<OrderMasterDTO> weekchart(HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId(); // 회원별 차트를 보기위해 세션의 memId를 가져와 memId에 넣음
		List<OrderMasterDTO> list = mapper.weekchart(memId); // mapper에 있는 weekchart() 실행시킨걸 list에 넣음
		
		return list;
	}
	
	@RequestMapping("/monthchart")
	public List<OrderMasterDTO> monthchart(HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId(); // 회원별 차트를 보기위해 세션의 memId를 가져와 memId에 넣음
		List<OrderMasterDTO> list = mapper.monthchart(memId); // mapper에 있는 monthchart() 실행시킨걸 list에 넣음
		
		return list;
	}
	
	@RequestMapping("/quaterchart")
	public List<OrderMasterDTO> quaterchart(HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		String memId = member.getMemId(); // 회원별 차트를 보기위해 세션의 memId를 가져와 memId에 넣음
		List<OrderMasterDTO> list = mapper.quaterchart(memId); // mapper에 있는 quaterchart() 실행시킨걸 list에 넣음
		
		return list;
	}
}
