package com.bean.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;


@NoArgsConstructor 
@RequiredArgsConstructor 
@AllArgsConstructor 
@Data 
public class MemberDTO {

	@NonNull
	private String memId; //회원 아이디
	private	String memPw; //회원 비밀번호
	private	String memName; //회원 이름
	private	String memPhone;//회원 전화번호
	private	String memAddress;//회원 주소
	
}


