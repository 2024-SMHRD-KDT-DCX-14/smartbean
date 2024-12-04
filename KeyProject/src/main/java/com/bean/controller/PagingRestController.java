package com.bean.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bean.entity.MemberDTO;
import com.bean.entity.OrderMasterDTO;
import com.bean.mapper.OrderMapper;

import jakarta.servlet.http.HttpSession;

@RestController
public class PagingRestController {


	@PostMapping("/pageNumber")
	public Map<String, Object> pageNumber(@RequestBody HashMap<String, Object> paramMap) {

		return paramMap;
	}

}
