<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="inner_container">
    <!-- 상단 두 구역 -->
    <div class="top_section">
        <div>
            <canvas id="myAreaChart" width="100%" height="50%"></canvas>
        </div>
    </div> <!-- 시간별 매출 -->
    <div class="top_section">
        <div>
            <canvas id="myAreaChart2" width="100%" heingt="50%"></canvas>
        </div>
    </div> <!-- 일별 매출 -->

    <!-- 하단 두 구역 -->
    <div class="bottom_section">
        <div>
            <canvas id="myAreaChart3" width="100%" heingt="50%"></canvas>
        </div>
    </div> <!-- 월별 매출 -->
    <div class="bottom_section">
        <div>
            <canvas id="myBarChart" width="100%" heingt="50%"></canvas>
        </div>
    </div> <!-- 분기별 매출 -->
  </div>
</body>
</html>