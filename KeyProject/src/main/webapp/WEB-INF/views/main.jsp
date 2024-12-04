<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>메인화면</title>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <link href="assets/css/styles.css" rel="stylesheet" />

        <!-- 필요한 외부 CSS/JS 주석 -->
        <style>
		body {
   				margin-left: 225px;
   				height: 150vh;
		}
		</style>
        
        
        
    </head>
    <body class="sb-nav-fixed">
    	<%@ include file="index.jsp"%>
    
    
        <div id="layoutSidenav_content">
        
            <main>
                <div class="container-fluid px-4">
                <br><br>
                    <h3 class="mt-4">메인화면</h3>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                    <div class="row"> <!-- 최고 매출 카드 -->
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-primary text-white mb-4">
                                <div class="card-body">일주일 간 최고 매출</div>
									 <h3 align="center">${maxSales.orderMasterTotal}원</h3>
                                 <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="/perioddashboard">상세보기</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div> 
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-warning text-white mb-4">
                                <div class="card-body">일주일 간 최저 매출</div>
									<h3 align="center">${minSales.orderMasterTotal}원</h3>
                                 <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="/perioddashboard">상세보기</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div> 
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-success text-white mb-4">
                                <div class="card-body">인기 메뉴</div>
									<h3 align="center">${maxMenu.menuName}</h3>
                                 <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="/menudashboard">상세보기</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div> 
                                
                                
                                
                        
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-danger text-white mb-4">
                                <div class="card-body" id="tableCheck">재고 현황</div>
                                
                              <!-- 재고 총수량 조회 로직  -->
									<!-- 빨대 -->
										<c:if test="${count[0].mrStock<500}">
										<h4 align="center">${count[0].mrName} : ${count[0].mrStock}${count[0].mrCodeUnit},	   500개미만 재고 부족</h4>
										</c:if>
									
								     <!-- 우유 -->
										<c:if test="${count[1].mrStock<20000}">
									   <h4 align="center">${count[1].mrName} : ${count[1].mrStock}${count[1].mrCodeUnit},	   20L미만 재고 부족</h4>
										</c:if>
									
								     <!-- 원두 -->
										<c:if test="${count[2].mrStock<20000}">
										<h4 align="center">${count[2].mrName} : ${count[2].mrStock}${count[2].mrCodeUnit},	   20kg미만 재고 부족</h4>
										</c:if>
										
								     <!-- 치즈케익 -->
										<c:if test="${count[3].mrStock<50}">
										<h4 align="center">${count[3].mrName} : ${count[3].mrStock}${count[3].mrCodeUnit},	   50개미만 재고 부족</h4>
										</c:if>
										
								     <!-- 컵 -->
										<c:if test="${count[4].mrStock<500}">
								   		<h4 align="center">${count[4].mrName} : ${count[4].mrStock}${count[4].mrCodeUnit},    500개미만 재고 부족</h4>
										</c:if>
										
								     <!-- 티라미수 -->
										<c:if test="${count[5].mrStock<50}">
										<h4 align="center">${count[5].mrName} : ${count[5].mrStock}${count[5].mrCodeUnit},   50개미만 재고 부족</h4>
										</c:if>
                                
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="/table">상세보기</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <div class="card-header"> <!-- 일일 매출 차트 --> 
                                    <i class="fas fa-chart-area me-1"></i>
                                    일일 매출
                                </div>
                                <div class="card-body">
                                    <!-- 데이터 바인딩 -->
                                    <canvas id="mainTimeChart" width="100%" height="40"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <div class="card-header"> <!-- 메뉴별 매출 차트 -->
                                    <i class="fas fa-chart-bar me-1"></i>
                                    메뉴별 매출
                                </div>
                                <div class="card-body">
                                    <!-- 데이터 바인딩 -->
                                    <canvas id="mainMenuChart" width="100%" height="40"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <!-- Chart.js 라이브러리 -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <!-- Chart 데이터 관련 스크립트 -->
        <script src="assets/js/mainTimeChart.js"></script>
        <script src="assets/js/mainMenuChart.js"></script>
    </body>
</html>