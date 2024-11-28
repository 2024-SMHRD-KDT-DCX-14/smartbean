package com.bean.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;

import com.bean.entity.MaterialDTO;



@Mapper
public interface MaterialMapper {

	public List<MaterialDTO> list(); // 원자재 조회 메소드때 사용한다
	 
	
}
