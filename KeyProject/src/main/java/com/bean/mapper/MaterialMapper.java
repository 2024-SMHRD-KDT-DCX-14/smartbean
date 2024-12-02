package com.bean.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;

import com.bean.entity.MaterialDTO;

@Mapper
public interface MaterialMapper {

	public List<MaterialDTO> list(String memId); // 원자재 조회 메소드

	public int insert(MaterialDTO material); // 원자재 등록 메소드

	public int update(MaterialDTO material); // 원자재 수정 메소드

	@Delete("delete from TB_MATERIAL where Mr_Code = #{mrCode}")
	public int delete(String mrCode); // 재고 내역 삭제 메소드

	public List<MaterialDTO> productlist(); // 상품 조회 메소드

	public List<MaterialDTO> count(String memId); // 원자재 종류별 총수량 조회 메소드
}
