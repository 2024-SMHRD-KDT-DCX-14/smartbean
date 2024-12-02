<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<link href="assets/css/menudashboard.css" rel="stylesheet">
</head>
<body>
	<%@ include file="index.jsp"%>
	
	        <br><<h4>메뉴별 매출 조회</h4>
	<div class="inner_container">
		<div> <%-- 음료 차트 --%>
		  	<canvas id="menuChart" width="100%" height="50%"></canvas>
		</div>
	</div>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="assets/js/menuDashBoard.js"></script>
</body>
</html>