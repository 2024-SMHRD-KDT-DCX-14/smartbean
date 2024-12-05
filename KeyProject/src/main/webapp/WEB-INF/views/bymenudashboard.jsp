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

    <b>메뉴 기간별 매출 조회</b>
	<sapn class="dropdown">
	  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
	    메뉴선택
	  </button>
	  <ul class="dropdown-menu">
	    <li><button class="dropdown-item" data-menu="아메리카노(HOT)" onclick="sendMenuData(this)">아메리카노(HOT)</button></li>
	    <li><button class="dropdown-item" data-menu="아메리카노(ICE)" onclick="sendMenuData(this)">아메리카노(ICE)</button></li>
	    <li><button class="dropdown-item" data-menu="카페라떼(HOT)" onclick="sendMenuData(this)">카페라떼(HOT)</button</li>
	    <li><button class="dropdown-item" data-menu="카페라떼(ICE)" onclick="sendMenuData(this)">카페라떼(ICE)</button</li>
	    <li><button class="dropdown-item" data-menu="카푸치노(HOT)" onclick="sendMenuData(this)">카푸치노(HOT)</button</li>
	    <li><button class="dropdown-item" data-menu="카푸치노(ICE)" onclick="sendMenuData(this)">카푸치노(ICE)</button</li>
	    <li><button class="dropdown-item" data-menu="치즈케익" onclick="sendMenuData(this)">치즈케익</button</li>
	    <li><button class="dropdown-item" data-menu="티라미수" onclick="sendMenuData(this)">티라미수</button</li>
	  </ul>
	</span>



	<div class="inner_container">
		<div> <%-- 음료 차트 --%>
		  	<canvas id="menuChart" width="100%" height="50%"></canvas>
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
  <script src="assets/js/byMenuChart.js"></script>
  <script src="assets/js/menuTotalChart.js"></script>
</body>
</html>