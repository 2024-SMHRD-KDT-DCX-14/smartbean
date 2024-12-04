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
<!-- J query -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>



<style>
.modal_1 {
	position: absolute;
	display: none;
	justify-content: center;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal_body_1 {
	position: absolute;
	top: 50%; /*모달을 화면가운데 놓기위함. */
	width: 600px; /*모달의 가로크기 */
	height: 500px; /*모달의 세로크기 */
	padding: 40px;
	text-align: center;
	background-color: rgb(255, 255, 255); /*모달창 배경색 흰색*/
	border-radius: 10px;
	box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15); /*테두리 그림자 */
	transform: translateY(-50%); /*모듈창열었을때 위치설정 가운데로 */
}

.modal_2 {
	position: absolute;
	display: none;
	justify-content: center;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.modal_body_2 {
	position: absolute;
	top: 50%; /*모달을 화면가운데 놓기위함. */
	width: 600px; /*모달의 가로크기 */
	height: 500px; /*모달의 세로크기 */
	padding: 40px;
	text-align: center;
	background-color: rgb(255, 255, 255); /*모달창 배경색 흰색*/
	border-radius: 10px;
	box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15); /*테두리 그림자 */
	transform: translateY(-50%); /*모듈창열었을때 위치설정 가운데로 */
}

.modal_buttons {
	margin-top: 20px; /* "단위" 필드와 버튼 사이 간격 추가 */
	position: absolute;
	bottom: 60px;
	left: 50%; /* 좌우 가운데 정렬 */
	transform: translateX(-50%); /* 정확히 가운데 정렬 */
	display: flex;
	gap: 10px; /* 버튼 간 간격 조정 */
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
	<table class="table text-center">
		<br>
		<br>
		<br>
		<h4>현재 주문 현황</h4>
		<thead>
			<tr>
				<th>주문번호</th>
				<th>총 금액</th>
				<th>총 주문수량</th>
				<th>주문일자</th>
				<th>상태</th>
				<th>상세보기</th>
				<th>주문완료</th>
				<th>주문취소</th>
			</tr>
		</thead>
		<tbody>
			<!-- 현재 준비중인 상태의 주문 내역만 출력  -->
			<c:forEach var="status" items="${statusOrderList}">
				<tr>
					<td>${status.orderMasterNumber}</td>
					<td>${status.orderMasterTotal}</a></td>
					<td>${status.orderMasterTotalAmount}</td>
					<td>${status.orderMasterDate}</td>
					<td>${status.status}</td>
					<td data-bs-toggle="collapse"
						href="#order-details-${status.orderMasterNumber}" role="button"
						aria-expanded="false" aria-controls="collapseExample"
						class="rounded-pill">클릭</td>
					<td onclick="orderResult('${status.orderMasterNumber}')"
						type="button">주문완료</td>
					<td><img id=orderStatusDelete
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1n3bMMdFvjsc5IHKoYxkfjuYDxAToALBphw&s"
						type="button" style="width: 15px"
						onclick="orderDelete('${status.orderMasterNumber}')"></td>
				</tr>

				<!-- 주문 상세 내역 -->
				<tr id="order-details-${status.orderMasterNumber}" class="collapse">
					<td colspan="5">
						<table class="table table-secondary">
							<thead>
								<tr>
									<th>주문번호</th>
									<th>메뉴 주문수량</th>
									<th>메뉴 총가격</th>
									<th>메뉴 이름</th>
								</tr>
							</thead>
							<tbody id="orderStatusDetail">
								<!-- 해당 주문번호의 상세 내역만 출력 -->
								<c:forEach var="detail" items="${viewOrderDetail}">
									<c:if
										test="${detail.orderDetailNumber == status.orderMasterNumber}">
										<tr>
											<td>${detail.orderDetailNumber}</td>
											<td>${detail.orderDetailAmt}</td>
											<td>${detail.orderDetailPrice}</td>
											<td>${detail.menuName}</td>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
						</table>
					</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	</div>

	<div class="container mt-5">
		<h4>주문조회</h4>

		<table class="table text-center">
			<thead>
				<tr>
					<th>주문번호</th>
					<th>총 금액</th>
					<th>주문일자</th>
					<th>Status</th>
					<th>상세</th>
				</tr>
			</thead>
			<tbody id="orderTableBody">
				<!-- 주문 조회 로직 라는 이름에 조회 리스트 담음  -->
				<c:forEach var="OrderMasterDTO" items="${pagingOrderList}">
					<tr>
						<td>${OrderMasterDTO.orderMasterNumber}</td>
						<td>${OrderMasterDTO.orderMasterTotal}</a></td>
						<td>${OrderMasterDTO.orderMasterDate}</td>
						<td>${OrderMasterDTO.status}</td>
						<td data-bs-toggle="collapse"
							href="#complete-details-${OrderMasterDTO.orderMasterNumber}"
							role="button" aria-expanded="false"
							aria-controls="collapseExample">보기</td>
					</tr>

					<!-- 주문 상세 내역 -->
					<tr class="collapse"
						id="complete-details-${OrderMasterDTO.orderMasterNumber}">

						<td colspan="5">
							<table class="table table-secondary">
								<thead>
									<tr>
										<th>주문번호</th>
										<th>메뉴 주문수량</th>
										<th>메뉴 총가격</th>
										<th>메뉴 이름</th>
									</tr>
								</thead>
								<tbody>
									<!-- 해당 주문번호의 상세 내역만 출력 -->
									<c:forEach var="completeDetail" items="${completeViewDetail}">
										<c:if
											test="${completeDetail.orderDetailNumber == OrderMasterDTO.orderMasterNumber}">
											<tr>
												<td>${completeDetail.orderDetailNumber}</td>
												<td>${completeDetail.orderDetailAmt}</td>
												<td>${completeDetail.orderDetailPrice}</td>
												<td>${completeDetail.menuName}</td>
											</tr>
										</c:if>
									</c:forEach>
								</tbody>
							</table>
						</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<!-- 페이징 네비게이션 -->
	<div style="text-align: center;">
		<c:forEach begin="1" end="${pageTotal}" var="pageNum">
			<a id="${pageNum}" href="?page=${pageNum}" style="width: 30px"
				onclick="paging('${pageNum}')">${pageNum}</a>
		</c:forEach>
	</div>

	<!-- 페이징 하기 -->
	<script>
	
	function paging(pageNum){
		
		var pageNumber = Number(pageNum);
		
		var pagedata = {
				pageNumber : pageNumber
			};
		
		$.ajax({
			url: "/pageNumber",
			method: 'POST',
			contentType: 'application/json', // JSON 형식 지정
			data: JSON.stringify(pagedata),
	        success: function(response) {
	            
	        },
	        error: function(xhr, status, error) {
	            // Handle error response here
	            alert('Error processing checkout. Please try again.');
	            console.error('Error: ' + error);
			}
		
			})
		}
	</script>




	<script>
	// 삭제 로직
	function orderDelete(orderNumber){
		
     	var orderDeleteNumber = Number(orderNumber);
		
		var dataDelete = {
				orderDeleteNumber : orderDeleteNumber
			};
		
		$.ajax({
			url: "/orderdelete",
			method: 'POST',
			contentType: 'application/json', // JSON 형식 지정
			data: JSON.stringify(dataDelete),
	        success: function(response) {
	            // Handle success response here
	            alert('완료되었습니다.');
	            location.reload(true);
	        },
	        error: function(xhr, status, error) {
	            // Handle error response here
	            alert('Error processing checkout. Please try again.');
	            console.error('Error: ' + error);
	        }  
		 }) 	
	}						
	</script>

	<script>
	
	// 상태 완료!
     function orderResult(orderNumber) {
      	
      	
      	var orderMasterNumber = Number(orderNumber);
		
		var dataParameter = {
				orderNumber : orderMasterNumber
			};
		
		
		$.ajax({
				url: "/ordersave",
				method: 'POST',
				contentType: 'application/json', // JSON 형식 지정
				data: JSON.stringify(dataParameter),
		        success: function(response) {
		            // Handle success response here
		            alert('완료되었습니다.');
		            location.reload(true);
		        },
		        error: function(xhr, status, error) {
		            // Handle error response here
		            alert('주문 처리 중 에러가 발생했습니다.');
		            console.error('Error: ' + error);
		        }  
			 })
			 

    }
	</script>



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
        })
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