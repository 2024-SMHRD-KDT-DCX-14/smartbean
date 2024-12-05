<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/styles.css" rel="stylesheet">
<style>
body { /* 인덱스때문에 줘야함 */
    margin-left: 225px !important;
	margin-top: 50px !important;
	height: 90vh !important;
    }
</style>
</head>
<body class="sb-nav-fixed">
	<%@ include file="index.jsp"%>
	
    <b>날짜별 매출 조회</b> <input type="date" class="date" onchange="sendPeriodData(this)">
	
	<div class="inner_container">
		<div> <%-- 시간 차트 --%>
		  	<canvas id="periodChart" width="100%" height="50%"></canvas>
		</div>
	</div>
	      <footer class="py-4 bg-light mt-auto">
      <div class="container-fluid px-4">
         <div class="d-flex align-items-center justify-content-between small">
            <div class="text-muted">Copyright &copy; SmartCoffeeBean 2024</div>
         </div>
      </div>
     </footer>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="assets/js/byPeriodChart.js"></script>
</body>
</html>