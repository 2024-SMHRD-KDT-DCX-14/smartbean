package com.bean.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bean.entity.Member;

@Mapper // 해당파일이 Mapper임을 명시
public interface MemberMapper {
	
	// 1. 연결
	// 2. 기능구현(MyBatis Framework)
	// java <--(mapping)--> xml
	// 실행코드  			   (sql)
	// insert/delete/update >> int 리턴
	// sql문의 id == 메소드 이름
	public int join(Member member); // 추상메소드, 추상 클래스, -> interface(추상메소드만 있는것)
	//회원가입용 메소드(기능)이라, join이라 적은 메소드이다.
		
	public Member login(Member member);
	
	public Member check(String memID); // 만약 select조회결과 여러개 인스턴스면 List<Member>이렇게 리스트로 담아서 return해야한다.
	
}
