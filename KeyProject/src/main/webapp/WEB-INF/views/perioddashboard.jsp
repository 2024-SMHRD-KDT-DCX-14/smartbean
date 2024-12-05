<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<link href="assets/css/dashboard.css" rel="stylesheet">
<style>
#click {
	background-color: LightGray;
	color: inherit;
}
</style>
</head>
<body class="sb-nav-fixed">
<%@ include file="index.jsp"%>

 <br><br>
 <b>기간별 매출 조회 <a id="click" href="/byperioddashboard">날짜별 매출 조회</a></b>
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
  <br>
  <br>
  <footer class="py-4 bg-light mt-auto">
      <div class="container-fluid px-4">
         <div class="d-flex align-items-center justify-content-between small">
            <div class="text-muted">Copyright &copy; SmartCoffeeBean 2024</div>
         </div>
      </div>
         </footer>
  
  
  
  <!-- Scripts -->
  <script src="assets/js/periodDayChart.js"></script>
  <script src="assets/js/periodWeekChart.js"></script>
  <script src="assets/js/periodMonthChart.js"></script>
  <script src="assets/js/periodQuaterChart.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</body>
</html>