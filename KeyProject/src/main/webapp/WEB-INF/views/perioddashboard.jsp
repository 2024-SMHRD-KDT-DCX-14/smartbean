<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<link rel="stylesheet" href="assets/css/dashboard.css">

</head>
<body class="sb-nav-fixed">
<%@ include file="index.jsp"%>

 <br><<h4>기간별 매출 조회</h4>
  <div class="inner_container">
    <!-- 상단 두 구역 -->
    <div class="top_section">
        <div> <!-- 금일 매출 -->
            <canvas id="dayChart" width="100%" height="50%"></canvas>
        </div>
    </div>  
    <div class="top_section">
        <div> <!-- 금주 매출 -->
            <canvas id="weekChart" width="100%" heingt="50%"></canvas>
        </div>
    </div>

    <!-- 하단 두 구역 -->
    <div class="bottom_section">
        <div> <!-- 월별 매출 -->
            <canvas id="monthChart" width="100%" heingt="50%"></canvas>
        </div>
    </div>
    <div class="bottom_section">
        <div> <!-- 분기별 매출 -->
            <canvas id="quaterChart" width="100%" heingt="50%"></canvas>
        </div>
    </div> 
  </div>
  
  
  <!-- Scripts -->
  <script src="assets/js/periodDayChart.js"></script>
  <script src="assets/js/periodWeekChart.js"></script>
  <script src="assets/js/periodMonthChart.js"></script>
  <script src="assets/js/periodQuaterChart.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</body>
</html>