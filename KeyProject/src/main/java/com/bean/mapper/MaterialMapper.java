package com.bean.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;

import com.bean.entity.MaterialDTO;



@Mapper
public interface MaterialMapper {

	public List<MaterialDTO> list(); // 원자재 조회 메소드때 사용한다

	public int insert(MaterialDTO material); // 원자재 등록 메소드
	
	public int update(MaterialDTO material); // 원자재 수정 메소드
	 
	@Delete("delete from TB_MATERIAL where Mr_Code = #{mrCode}")
	public int delete(String mrCode); // 재고 내역 삭제 메소드
}
