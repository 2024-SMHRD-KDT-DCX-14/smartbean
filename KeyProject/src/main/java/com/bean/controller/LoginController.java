package com.bean.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.entity.MaterialDTO;
import com.bean.entity.MemberDTO;
import com.bean.entity.OrderDetailDTO;
import com.bean.entity.OrderMasterDTO;
import com.bean.mapper.MainMapper;
import com.bean.mapper.MaterialMapper;
import com.bean.mapper.MemberMapper;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

	@Autowired
	private MemberMapper mapper;
	@Autowired	
	private MaterialMapper materialMapper;
	@Autowired
	private MainMapper mainMapper;
	
	
	// main.jsp로 이동(메인페이지로 이동)
	@RequestMapping("/main") 
	 public String gomain(HttpSession session) {
		
		 
		 MemberDTO mem = (MemberDTO) session.getAttribute("user");
	      
	      
	      System.out.println(mem);
	      if(mem== null) {
	         System.out.println("로그인이 안되어 있습니다.");
	         return "redirect:/login";
	      }else {
		
		String memId = mem.getMemId();
		// 재고 총량 session에 저장 로직.   출력은 jsp에서 session값 el문법으로 바로 접근.
		List<MaterialDTO> count = materialMapper.count(memId);
		session.setAttribute("count",count);

 		// mainMapper의 maxSales에 mainMapper  //메인 카드에 들어갈 데이터 조회와 session에 저장 로직.
 		OrderMasterDTO maxSales = mainMapper.maxsales(memId);
 		session.setAttribute("maxSales", maxSales);
         System.out.println("maxsales : "+maxSales);
         OrderMasterDTO minSales = mainMapper.minsales(memId);
 		session.setAttribute("minSales", minSales);
 		System.out.println("minsales : "+minSales);

 		OrderDetailDTO maxMenu = mainMapper.maxmenu(memId);
 		session.setAttribute("maxMenu", maxMenu);
 		System.out.println("maxmenu : "+maxMenu);
		
	    return "main";}
	    }
	
	
	
	// login.jps로 이동
	 @RequestMapping("/login") 
	 public String login() {
	    return "login";
	 	}
	 
	 
	 // 로그인 로직 구현
	 @RequestMapping("/loginProcess")
	   public String loginProcess(MemberDTO member, HttpSession session) {
	      // 1. 데이터 수집 -> 매개변수에 Member의 객체를 생성한다.
	      System.out.println(member);
	      // 2. 기능 실행
	      MemberDTO result = mapper.login(member);
	      
	      
	      System.out.println(result);
	      if(result== null) {
	         System.out.println("login f");
	         return "redirect:/login";
	      }else {
	         System.out.println("login t");
	         session.setAttribute("user", result);
	         


	        return "redirect:/main";
	      }
	      
	   }
	   
 	 // logout로 이동
	 @RequestMapping("/logout") 
	 public String logout(HttpSession session) {
		session.removeAttribute("user");
	    return "redirect:/login";
	 	}
	 
	 
	
}
