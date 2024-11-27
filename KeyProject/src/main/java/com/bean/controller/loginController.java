package com.bean.controller;

//import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.entity.Member;
import com.bean.mapper.MemberMapper;

import jakarta.servlet.http.HttpSession;

//@MapperScan("com.bean.mapper")
@Controller
public class loginController {

	@Autowired
	private MemberMapper mapper; 
	
	@RequestMapping("/login") //login 요청이 들어오면, login페이지 실행하라***************
	public String go() {
		return "login";
	}
		

	

}
