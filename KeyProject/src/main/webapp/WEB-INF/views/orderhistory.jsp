<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple DataTables Example</title>
	<link href="assets/css/styles.css" rel="stylesheet">
	<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script><!-- Simple-DataTables CSS -->
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1. 	2/dist/style.min.css" rel="stylesheet">

	<style>
	        .modal_1{
	            position:absolute;
	            display:none;
	            
	            justify-content: center;
	            top:0;
	            left:0;

	            width:100%;
	            height:100%;

	            background-color: rgba(0,0,0,0.4);
	        }
			
			
			.modal_body_1{
			            position:absolute;
			            top:50%; /*모달을 화면가운데 놓기위함. */
			        

			            width:600px;  /*모달의 가로크기 */
			            height:500px; /*모달의 세로크기 */

			            padding:40px;  

			            text-align: center;

			            background-color: rgb(255,255,255); /*모달창 배경색 흰색*/
			            border-radius:10px; 
			            box-shadow:0 2px 3px 0 rgba(34,36,38,0.15); /*테두리 그림자 */

			            transform:translateY(-50%); /*모듈창열었을때 위치설정 가운데로 */
			        }
	        .modal_2{
	            position:absolute;
	            display:none;
	            
	            justify-content: center;
	            top:0;
	            left:0;

	            width:100%;
	            height:100%;

	           
	        }
			
			
			.modal_body_2{
			            position:absolute;
			            top:50%; /*모달을 화면가운데 놓기위함. */
			        

			            width:600px;  /*모달의 가로크기 */
			            height:500px; /*모달의 세로크기 */

			            padding:40px;  

			            text-align: center;

			            background-color: rgb(255,255,255); /*모달창 배경색 흰색*/
			            border-radius:10px; 
			            box-shadow:0 2px 3px 0 rgba(34,36,38,0.15); /*테두리 그림자 */

			            transform:translateY(-50%); /*모듈창열었을때 위치설정 가운데로 */
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
        <h2>주문조회</h2>
		
		<td><button class="btn-open-modal_1 btn btn-outline-secondary">상세조회</button></td>
		
        <table id="datatablesSimple" class="table table-striped table-hover">
            <thead>
                <tr>
					<th>주문번호</th>
					<th>총 금액</th>
					<th>주문일자</th>
					<th>삭제</th>
                </tr>
            </thead>
			  <tbody>
				<!-- 주문 조회 로직  -->
				<c:forEach var="OrderMasterDTO" items="${list}">
					<tr>
						<td>${OrderMasterDTO.orderMasterNumber}</td>
						<td>${OrderMasterDTO.orderMasterTotal}</a></td>
						<td>${OrderMasterDTO.orderMasterDate}</td>
						<td> <a href="delete/${MaterialDTO.mrCode}">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle" viewBox="0 0 16 16">
				 			<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
				  			<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708"/>
							</svg></a>
						</td>  
					</tr>
				</c:forEach>
			   </tbody>
        </table>
    </div>
	


			
			<div class="modal_1">
			        <div class="modal_body_1">
			        	<form action="/select" method="post">
						<h3>주문 상세 조회</h3>
						
						<br>	
						주문번호는 실제 주문테이블에 있는 번호를 입력해야 합니다
						<br><br>

						<!-- 아이디 고정 -->
						<div class="input-group mb-3">
							<input name="memId" type="text" class="form-control" readonly value="${user.memId}" aria-label="memId" aria-describedby="button-addon2">
						</div>
						
						<!-- 주문 번호 -->
						<div class="input-group mb-3">
							<input name="orderMasterNumber" type="text" class="form-control" placeholder="주문번호" aria-label="orderMasterNumber" aria-describedby="button-addon2">
						</div>
							<div class="modal_buttons">
							    <button class="btn-open-modal_2 btn btn-outline-secondary">조회</button>
							    <button type="button" class="btn-close-modal_1 btn btn-outline-secondary" data-bs-dismiss="modal_1" aria-label="Close">닫기</button>
							</div>	
						</form>
					</div>
				 </div>
				 
				 
				 <div class="modal_2">
				         <div class="modal_body_2">
				         	<form action="/update" method="post">
								<h3>조회</h3>
									
										<table id="datatablesSimple" class="table table-striped table-hover">
            <thead>
                <tr>
					<th>주문번호</th>
					<th>메뉴명</th>
					<th>메뉴가격</th>
					<th>메뉴개수</th>
					<th>주문일자</th>
					<th>총금액</th>
                </tr>
            </thead>
			  <tbody>
							       <c:forEach var="OrderMasterDTO" items="${list}">
									<tr>
										<td>${OrderMasterDTO.orderMasterNumber}</td>
										<td>${OrderMasterDTO.orderMasterTotal}</a></td>
										<td>${OrderMasterDTO.orderMasterDate}</td>
										<td>${OrderMasterDTO.orderMasterDate}</td>
										<td>${OrderMasterDTO.orderMasterDate}</td>
										<td>${OrderMasterDTO.orderMasterDate}</td>
								 	
									</tr>
									</c:forEach>
			   </tbody>
        </table>
						</div>
					</div>
		

					
					
			    <script>
					const modal_1 = document.querySelector('.modal_1'); // 등록 모달
					const modal_2 = document.querySelector('.modal_2'); // 수정 모달
					const btnOpenModal_1 = document.querySelector('.btn-open-modal_1'); // 등록 버튼
					const btnOpenModal_2 = document.querySelector('.btn-open-modal_2'); // 수정 버튼
					const btnCloseModal_1 = document.querySelector('.btn-close-modal_1'); // 등록 모달 닫기 버튼
					const btnCloseModal_2 = document.querySelector('.btn-close-modal_2'); // 수정 모달 닫기 버튼

					// 모든 모달 닫기 함수
					function closeAllModals() {
					    modal_1.style.display = "none";
					    modal_2.style.display = "none";
					}

					// 등록 버튼 클릭 시 등록 모달 열기
					btnOpenModal_1.addEventListener("click", () => {
					    
					    modal_1.style.display = "flex"; // modal_1 표시
					});

					// 수정 버튼 클릭 시 수정 모달 열기
					btnOpenModal_2.addEventListener("click", (event) => {
					    event.preventDefault(); // 기본 동작 방지
					    modal_2.style.display = "flex"; // modal_2 표시
					});


					// 등록 모달 닫기
					btnCloseModal_1.addEventListener("click", () => {
					    modal_1.style.display = "none"; // modal_1 숨기기
					});

					// 수정 모달 닫기
					btnCloseModal_2.addEventListener("click", () => {
					    modal_2.style.display = "none"; // modal_2 숨기기
					});
					
			 </script>
	
	


    <!-- Simple-DataTables JS -->
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
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


	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>

</html>