<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Simple DataTables Example</title>
<link href="assets/css/styles.css" rel="stylesheet">
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Simple-DataTables CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet">

<style>
.modal {
	position: absolute;
	display: none;
	justify-content: center;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal_body {
	position: absolute;
	top: 50%; /*모달을 화면가운데 놓기위함. */
	width: 600px; /*모달의 가로크기 */
	height: 500px; /*모달의 세로크기 */
	padding: 40px;
	text-align: center;
	background-color: rgb(255, 255, 255); /*모달창 배경색 흰색*/
	border-radius: 10px; //
	테두리 box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15); /*테두리 그림자 */
	transform: translateY(-50%); /*모듈창열었을때 위치설정 가운데로 */
}
</style>
<!-- 필요한 외부 CSS/JS 주석 -->
<style>
body {
	margin-left: 225px;
	height: 100vh;
}
</style>


</head>
<body>
	<%@ include file="index.jsp"%>
	<div class="container mt-5">
		<h2>상품관리</h2>
		<table id="datatablesSimple" class="table table-striped table-hover">
			<thead>
				<tr>
					<th>상품명</th>
					<th>가격</th>
				</tr>
			</thead>
			<tbody>
				<!-- 상품 조회 로직  -->
				<c:forEach var="MaterialDTO" items="${list}">
					<tr>
						<td>${MaterialDTO.menuName}</td>
						<td>${MaterialDTO.menuPrice}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>



	<!-- Simple-DataTables JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
	<!-- JavaScript 초기화 -->
	<script>
        document.addEventListener("DOMContentLoaded", () => {
            const dataTable = new simpleDatatables.DataTable("#datatablesSimple", {
                searchable: true,
                fixedHeight: true,
                perPage: 5
            });
        });
    </script>
	<footer class="py-4 bg-light mt-auto">
		<div class="container-fluid px-4">
			<div class="d-flex align-items-center justify-content-between small">
				<div class="text-muted">Copyright &copy; SmartCoffeeBean 2024</div>
			</div>
		</div>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>

</html>