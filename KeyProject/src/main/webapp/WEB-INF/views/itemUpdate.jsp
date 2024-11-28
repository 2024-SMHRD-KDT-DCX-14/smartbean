<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="board">
	<h1>재고 내역 수정</h1>
	<h3>원자재 코드는 실제 재고 테이블에 있는 원자재 코드(mrCode)를 입력해야 합니다</h3>
		<form action="/update" method="post">
		<%-- multipart/form-data 한글자도 틀리면 안된다! 여기서 틀려서, 이미지 저장안되는 오류가 많다! --%>
			<table id="list">
				<tr>
					<td>원자재 코드</td>
					<td>원자재명</td>
		<!-- 			<td>입고일자</td>
					<td>유통기한</td> -->
					<td>수량</td>
					<td>단위</td>
				</tr>
				<tr>
				<!-- readonly value="${memberDTO.memId}" -->
					<td><input name="mrCode" type="text" placeholder="변경할 원자재 코드를 입력하세요"></td>
					<td><input name="mrName" type="text" placeholder="원자재명을 수정하세요"></td>
				<!-- 	<td><input name="mrInboundDate" type="text" placeholder="입고일자를 입력하세요"></td>
					<td><input name="mrExpiredDate" type="text" placeholder="유통기한을 입력하세요"></td> -->
					<td><input name="mrStock" type="text" placeholder="수량을 수정하세요"></td>
					<td><input name="mrCodeUnit" type="text" placeholder="단위를 수정하세요"></td>
				</tr>
				<tr>
					<td colspan="2">
					<input type="reset" value="작성초기화"> 
					<input type="submit" value="재고 내역 수정">
					</td>
				</tr>
		</form>
	</div>
</body>
</html>