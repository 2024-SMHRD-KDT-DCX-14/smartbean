package com.bean.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.entity.MemberDTO;
import com.bean.mapper.MemberMapper;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

	@Autowired
	private MemberMapper mapper;
	
	
	 @RequestMapping("/login") 
	 public String login() {
	    return "login";
	 	}
	 
	 

	 @RequestMapping("/loginProcess")
	   public String loginProcess(MemberDTO member, HttpSession session) {
	      // 1. 데이터 수집 -> 매개변수에 Member의 객체를 생성한다.
		  System.out.println("ID: " + member.getMemId());
		  System.out.println("Password: " + member.getMemPw());
	      System.out.println(member);
	      // 2. 기능 실행
	      MemberDTO result = mapper.login(member);
	      
	      
	      System.out.println(result);
	      if(result== null) {
	         System.out.println("login f");
	      }else {
	         System.out.println("login t");
	         session.setAttribute("user", result);
	      }
	      // 3. View 이동
	      return "redirect:/join";
	   }
	   

	
}
