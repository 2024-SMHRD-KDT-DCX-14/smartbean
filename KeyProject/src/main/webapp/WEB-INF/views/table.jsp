<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>재고 관리</title>
<link href="assets/css/styles.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Simple-DataTables CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet">

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
	<div class="p-4">
		<div align="center" class="p-4 m-4">
			<div class="col-xl-9 col-md-6 card mainCard" align="center">
				<div class=" bg-primary mb-4 "
					style="background-image: url('mainmain.jpg'); background-size: cover; background-position: center;">
					<br>
					<br>
					<div class="neon-red" align="center">전체 재고 현황</div>
					<br>
					<!-- 재고 총수량 조회 로직  -->

					<!-- 원두 -->
					<span class="badge bg-primary">${count[2].mrName} :
						${count[2].mrStock/1000}kg/20kg</span>
					<!-- 우유 -->
					<span class="badge bg-secondary">${count[1].mrName} :
						${count[1].mrStock/1000}L/20L</span>
					<!-- 빨대 -->
					<span class="badge bg-danger">${count[0].mrName} :
						${count[0].mrStock}${count[0].mrCodeUnit}/500개</span>
					<!-- 컵 -->
					<span class="badge bg-info text-dark">${count[4].mrName} :
						${count[4].mrStock}${count[4].mrCodeUnit}/500개</span>
					<!-- 치즈케익 -->
					<span class="badge bg-warning text-dark">${count[3].mrName}
						: ${count[3].mrStock}${count[3].mrCodeUnit}/50개</span>
					<!-- 티라미수 -->
					<span class="badge bg-dark">${count[5].mrName} :
						${count[5].mrStock}${count[5].mrCodeUnit}/50개</span>

				</div>
			</div>
		</div>


		<button class="btn-open-modal_1 btn btn-outline-secondary right-fix">재고등록</button>



		<table id="datatablesSimple" class="table table-striped table-hover">
			<thead>
				<tr>
					<th>원자재코드</th>
					<th>원자재명</th>
					<th>제조사</th>
					<th>입고일자</th>
					<th>만료일자</th>
					<th>재고수량</th>
					<th>단위</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<!-- 재고 조회 로직  -->
				<c:forEach var="MaterialDTO" items="${list}">
					<tr>
						<td>${MaterialDTO.mrCode}</td>
						<td>${MaterialDTO.mrName}</td>
						<c:choose>
							<c:when test="${MaterialDTO.mrName eq '원두'}">
								<td>맥심</td>
							</c:when>
							<c:when test="${MaterialDTO.mrName eq '우유'}">
								<td>서울우유</td>
							</c:when>
							<c:when test="${MaterialDTO.mrName eq '빨대'}">
								<td>쿠팡</td>
							</c:when>
							<c:when test="${MaterialDTO.mrName eq '컵'}">
								<td>쿠팡</td>
							</c:when>
							<c:otherwise>
								<td>뚜레주르</td>
							</c:otherwise>
						</c:choose>
						<td>${MaterialDTO.mrInboundDate}</td>
						<td>${MaterialDTO.mrExpiredDate}</td>
						<td>${MaterialDTO.mrStock}</td>
						<td>${MaterialDTO.mrCodeUnit}</td>
						<td><a href="delete/${MaterialDTO.mrCode}"> <svg
									xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-x-circle" viewBox="0 0 16 16">
				 						 <path
										d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16" />
				 						 <path
										d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708" />
										 </svg></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>



	<div class="modal_1">
		<div class="modal_body_1">
			<form action="/insert" method="post">
				<h3>재고등록</h3>
				<br>
				<!-- 회원명 -->
				<div class="input-group mb-3">
					<input name="memId" type="text" class="form-control" readonly
						value="${user.memId}" aria-label="mrCode"
						aria-describedby="button-addon2">
				</div>

				<!-- 원자재코드 -->
				<div class="input-group mb-3">
					<input name="mrCode" type="text" class="form-control"
						placeholder="원자재코드" aria-label="mrCode"
						aria-describedby="button-addon2" required>
				</div>


				<!-- 원자재 종류 -->
				<div class="input-group mb-3">
					<select name="mrName" class="form-select" id="mrName">
						<option selected>종류</option>
						<option value="원두">원두</option>
						<option value="우유">우유</option>
						<option value="치즈케익">치즈케익</option>
						<option value="티라미수">티라미수</option>
						<option value="빨대">빨대</option>
						<option value="컵">컵</option>
					</select>
				</div>

				<!-- 입고일자 -->
				<!-- 	<div class="input-group mb-3">
							<input type="text" class="form-control" placeholder="입고일자" aria-label="mrInboundDate" aria-describedby="button-addon2">
						</div> -->


				<!-- 만료일자 -->
				<!-- <div class="input-group mb-3">
							<input type="text" class="form-control" placeholder="유통기한" aria-label="mrExpiredDate" aria-describedby="button-addon2">
						</div> -->


				<!-- 수량 추가 -->
				<div class="input-group mb-3">
					<input name="mrStock" type="text" class="form-control"
						placeholder="수량" aria-describedby="button-addon2">
				</div>


				<!--단위 -->
				<div class="input-group mb-3">
					<select name="mrCodeUnit" class="form-select" id="mrCodeUnit">
						<option selected>단위</option>
						<option value="g">g</option>
						<option value="개">개</option>
						<option value="ml">ml</option>
					</select>
				</div>


				<div class="modal_buttons">
					<input type="submit" value="등록하기" class="btn btn-outline-secondary">
					<button class="btn-open-modal_2 btn btn-outline-secondary">수정</button>
					<button type="button"
						class="btn-close-modal_1 btn btn-outline-secondary"
						data-bs-dismiss="modal_1" aria-label="Close">닫기</button>
				</div>

			</form>
		</div>
	</div>


	<div class="modal_2">
		<div class="modal_body_2">
			<form action="/update" method="post">
				<h3>재고 내역 수정</h3>
				<br> 원자재 코드는 실제 재고 테이블에 있는 원자재 코드를 입력해야 합니다 <br>
				<br>

				<%-- multipart/form-data 한글자도 틀리면 안된다! 여기서 틀려서, 이미지 저장안되는 오류가 많다! --%>

				<!-- 원자재코드 -->
				<div class="input-group mb-3">
					<input name="mrCode" type="text" class="form-control"
						placeholder="원자재코드" aria-label="mrCode"
						aria-describedby="button-addon2" required>
				</div>


				<!-- 원자재 종류 -->
				<div class="input-group mb-3">
					<select name="mrName" class="form-select" id="mrName">
						<option selected>종류</option>
						<option value="원두">원두</option>
						<option value="우유">우유</option>
						<option value="케이크">케이크</option>
						<option value="빨대">빨대</option>
						<option value="컵">컵</option>
					</select>
				</div>


				<!-- 수량 수정 -->
				<div class="input-group mb-3">
					<input name="mrStock" type="text" class="form-control"
						placeholder="수정할 수량" aria-label="mrStock"
						aria-describedby="button-addon2">
				</div>


				<!--단위 -->
				<div class="input-group mb-3">
					<select name="mrCodeUnit" class="form-select" id="mrCodeUnit">
						<option selected>단위</option>
						<option value="g">g</option>
						<option value="개">개</option>
						<option value="ml">ml</option>
					</select>
				</div>

				<br> <input class="btn btn-outline-secondary" type="reset"
					value="초기화"> <input class="btn btn-outline-secondary"
					type="submit" value="수정하기">
				<button type="button"
					class="btn-close-modal_2 btn btn-outline-secondary"
					data-bs-dismiss="modal_2" aria-label="Close">이전</button>
			</form>
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