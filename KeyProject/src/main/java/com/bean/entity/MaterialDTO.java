package com.bean.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
public class MaterialDTO {
//private: 접근 제한자!

	private String mrCode; // 원자재 코드
	private String mrName; // 원자재명
	private String mrInboundDate; // 입고일자
	private String mrExpiredDate; // 유통기한
	private int mrStock; // 수량
	private String mrCodeUnit; // 단위
	private String memId; // 회원 아이디

	/*
	 * private String Mr_Code; //원자재 코드
	 * 
	 * private String Mr_Name; // 원자재명
	 * 
	 * private String Mr_Inbound_Date; //입고일자
	 * 
	 * private String Mr_Expired_Date; //유통기한
	 * 
	 * private int Mr_Stock; // 수량
	 * 
	 * private String Mr_Code_Unit; // 단위
	 * 
	 * private String Mem_Id; //회원아이디
	 */

}
