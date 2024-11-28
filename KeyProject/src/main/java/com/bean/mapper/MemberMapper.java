package com.bean.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bean.entity.MemberDTO;

@Mapper // 해당파일이 Mapper임을 명시
public interface MemberMapper {
	
	public int join(MemberDTO member); //회원가입 로직
		
	public MemberDTO login(MemberDTO member); // 로그인 로직
	
	public MemberDTO check(String memId); // 회원가입 아이디 중복체크 로직
	
}
