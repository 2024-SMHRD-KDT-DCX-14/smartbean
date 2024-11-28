package com.bean.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.entity.MemberDTO;
import com.bean.mapper.MemberMapper;

import jakarta.servlet.http.HttpSession;

@Controller
public class JoinController {

	@Autowired
	private MemberMapper mapper;
	

	
	@RequestMapping("/main") 
	 public String gomain() {
	    return "main";
	 	}
	

	// join.jsp로 이동
	 @RequestMapping("/join") 
	 public String join() {
	    return "join";
	 	}

	
	 // 회원가입 로직
	 @PostMapping("/joinProcess")
		public String joinProcess(MemberDTO member) {

		 int cnt = mapper.join(member);
			
			if(cnt>0) {
				System.out.println("회원가입 성공");
			}
			
		return "redirect:/login";
		}

	
}

