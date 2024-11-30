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
	<div class="inner_container">
		<div class="section">
			<div> <%-- 음료 차트 --%>
		  		<canvas id="drinkChart" width="100%" height="75%"></canvas>
			</div>
		</div>
		<div class="section">
			<div> <%-- 디저트 차트--%>
				<canvas id="dessertChart" width="100%" height="100%"></canvas>
			</div>
		</div>
	</div>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="assets/js/drinkDashBoard.js"></script>
  <script src="assets/js/dessertDashBoard.js"></script>
</body>
</html>