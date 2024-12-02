<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Index</title>
	<link href="assets/css/style.css" rel="stylesheet" />
</head>

<body>
	<header id="upper_nav">
		<a href="/main"><h2>Coffee Lounge</h2></a>
		<nav>
			<span>${user.memId}님 접속 중__</span>
			<a id="logout" href="/login">Logout</a>
		</nav>
	</header>
	<div id="side_nav">
		<nav>
			<div class="side_nav_list">
				<div class="sidenav_menu_heading">주문내역</div>
				<div class="side_nav_in_list">
					<a href="/goOrder">주문/결제</a> <br>
					<a href="/orderhistory">주문내역 조회</a> <br> 
					<a href="productTable">상품관리</a> <br>
				</div>
			</div>
			<div class="side_nav_list">
				<div class="sidenav_menu_heading">
					<a href="table">재고관리</a>
				</div>
			</div>
			<div class="side_nav_list">
				<div class="sidenav_menu_heading">매출</div>
				<div class="side_nav_in_list">
					<a href="/perioddashboard">기간별 매출</a> <br> 
					<a href="/menudashboard">메뉴별 매출</a> <br>
				</div>
			</div>
		</nav>
	</div>
</body>
</html>