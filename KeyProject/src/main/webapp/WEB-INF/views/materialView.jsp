<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


</head>
<body>
	<div id="MaterialDTO">
	<h1>게시판 메인 페이지</h1>
		<table id="list">
			<thead>
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td>시간</td>
				</tr>
			</thead>
			<tbody>
				<%--Ex10.게시글 목록을 출력해봅시다. --%>
				<%--예시) --%>
				<%--
					begin : 시작하는 숫자
					end : 끝나는 숫자
					step : 증감
					>> for(int i = begin; i <= end; i+=step)
					
					var :(베리어블,변수) 배열의 요소값을 저장하는 변수명
					itmes : 배열,시퀀스, iterable
					>> for( var : items ){
						pageContext.setAttribute( "var", i);
					}
				 --%>
				<c:forEach var="MaterialDTO" items="${list}">
					<tr>
						<td>${MaterialDTO.mrCode}</td>
						<td>${MaterialDTO.mrName}</a></td>
						<td>${MaterialDTO.mrInboundDate}</td>
						<td>${MaterialDTO.mrExpiredDate}</td>
						<td>${MaterialDTO.mrStock}</td>
						<td>${MaterialDTO.mrCodeUnit}</td> 

					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
	

	
	
	
	
</body>
</html>