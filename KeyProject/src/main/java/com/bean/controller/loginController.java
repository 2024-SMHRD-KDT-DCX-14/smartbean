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
	
	@RequestMapping("/join") //goMain 요청이 들어오면, goMain()을 실행하라***************
	public String go() {
		// 1. 데이터 수집
		// 2. 기능 실행
		// 3. View 이동
		// forward 이동시, 이동하고 싶은 "jsp파일의 이름"만 return하면된다.
		return "join";
	}

	@RequestMapping("/join") //해당 요청이 들어오면, 이 메소드를 실행한다는 어노테이션(주석)!
	public String join(Member member) {
		// 1. 데이터 수집
		// 메소드의 매개변수 자리에 변수를 선언해두면 자동으로 수집
		// 변수명 == name
		// 형변환도 자동으로 진행

		// 2. 기능 실행
		// >> DB에 회원정보 저장하기
		int cnt = mapper.join(member);
		
		if(cnt >0) {
			System.out.println("join t");
		}else {
			System.out.println("join f");
		}
		
		// 3. View 이동
		return "redirect:/join";
		
	}
	
	@RequestMapping("/login")
	public String login(Member member, HttpSession session) {
		// 1. 데이터 수집 -> 매개변수에 Member의 객체를 생성한다.
		// 2. 기능 실행
		Member result = mapper.login(member);
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
