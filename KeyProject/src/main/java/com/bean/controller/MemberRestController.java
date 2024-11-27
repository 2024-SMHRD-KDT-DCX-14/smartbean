package com.bean.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.entity.MemberDTO;
import com.bean.mapper.MemberMapper;



@Controller
public class MemberRestController {
	
	@Autowired
	private MemberMapper mapper;
	
	@ResponseBody
	@RequestMapping("/check")
	public String check( String ID ) {
		//DB에서 email이 똑같은 게 있는지 
		
		// 기능 실행
		MemberDTO member = mapper.check(ID);
		
		//데이터 응답
		//: null인지 아닌지 체크해줘야함
		
		if(member == null) {
			return "t"; // 가입 가능하다.
		}else {
			return "f"; // 가입 불가능하다.
		}
	}
}
