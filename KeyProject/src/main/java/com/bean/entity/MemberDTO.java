package com.bean.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

//어노테이션.
@NoArgsConstructor // 기본생성자, 아무 필드(=맴버 변수)도 할당(=초기화)하지 않는 매개변수 없는 생성자!********
@RequiredArgsConstructor // NonNull이 걸린 필드만 매개변수로 할당(=초기화)해주는 생성자!
@AllArgsConstructor // 모든 필드를(=멤버 변수들을) 매개변수로 할당(=초기화)해주는 생성자!
@Data // getter/setter 등 기본메소드 생성(Lombok)
public class MemberDTO {
	// 필드 선언!=맴버 변수들 선언!
	@NonNull
	private String MEM_ID;

	private	String MEM_PW;
	
	private	String MEM_NAME;
	
	private	String MEM_PHONE;
	
	private	String MEM_ADDRESS;
	
}


