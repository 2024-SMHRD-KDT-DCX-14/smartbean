<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<link href="assets/css/dashboard.css" rel="stylesheet">
</head>
<body>
<%@ include file="index.jsp"%>
	
 <br><<h4>메뉴별 매출 조회</h4>
  <div class="inner_container">
    <!-- 상단 두 구역 -->
    <div class="top_section">
        <div> <!-- 메뉴별 금일 매출 -->
            <canvas id="menuDayChart" width="100%" height="50%"></canvas>
        </div>
    </div>  
    <div class="top_section">
        <div> <!-- 메뉴별 7일간 매출 -->
            <canvas id="menuWeekChart" width="100%" heingt="50%"></canvas>
        </div>
    </div>

    <!-- 하단 두 구역 -->
    <div class="bottom_section">
        <div> <!-- 메뉴별 30일간 매출 -->
            <canvas id="menuMonthChart" width="100%" heingt="50%"></canvas>
        </div>
    </div>
    <div class="bottom_section">
        <div> <!-- 메뉴별 전체기간 매출 -->
            <canvas id="menuChart" width="100%" heingt="50%"></canvas>
        </div>
    </div> 
  </div>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="assets/js/menuTotalChart.js"></script>
  <script src="assets/js/menuDayChart.js"></script>
  <script src="assets/js/menuWeekChart.js"></script>
  <script src="assets/js/menuMonthChart.js"></script>
</body>
</html>