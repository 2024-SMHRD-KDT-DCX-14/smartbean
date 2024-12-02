<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SmartCoffeeBean</title>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <link href="assets/css/styles.css" rel="stylesheet" />

        <!-- 필요한 외부 CSS/JS 주석 -->
        <style>
		body {
   				margin-left: 225px;
   				height: 100vh;
		}
		</style>
        
        
        
    </head>
    <body class="sb-nav-fixed">
    	<%@ include file="index.jsp"%>
    
    
        <div id="layoutSidenav_content">
        
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">SmartCoffeeBean</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                    <div class="row"> <!-- 최고 매출 카드 -->
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-primary text-white mb-4">
                                <div class="card-body">일주일 간 최고 매출<h2 align="right">324543원(가데이터)</h2></div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="/perioddashboard">상세보기</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div> <!-- 최저 매출 카드 -->
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-warning text-white mb-4">
                                <div class="card-body">일주일 간 최저 매출<h2 align="right">324643원(가데이터)</h2></div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="/perioddashboard">상세보기</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div> <!-- 인기 메뉴 카드 -->
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-success text-white mb-4">
                                <div class="card-body">인기 메뉴</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="/menudashboard">상세보기</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div> <!-- 재고 부족 카드 -->
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-danger text-white mb-4">
                                <div class="card-body">재고 부족 </div>
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
                                    <canvas id="myAreaChart" width="100%" height="40"></canvas>
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
                                    <canvas id="myBarChart" width="100%" height="40"></canvas>
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
        <script src="assets/js/mainDayChart.js"></script>
        <script src="assets/js/mainMenuChart.js"></script>
    </body>
</html>