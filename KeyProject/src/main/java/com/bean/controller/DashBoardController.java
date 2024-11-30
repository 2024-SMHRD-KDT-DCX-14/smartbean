package com.bean.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DashBoardController {
	
	// 메뉴별 대시보드로 이동
	@RequestMapping("/menudashboard") 
	 public void gomenudashboard() {
	 	}
	
	// 기간별 대시보드로 이동
	@RequestMapping("/perioddashboard")
	public void goperioddashboard() {
		
	}
}
