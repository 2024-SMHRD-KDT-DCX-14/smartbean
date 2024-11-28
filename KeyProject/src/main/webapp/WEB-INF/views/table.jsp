<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple DataTables Example</title>
	<link href="assets/css/styles.css" rel="stylesheet">
	<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script><!-- Simple-DataTables CSS -->
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet">

	<style>
	        .modal{
	            position:absolute;
	            display:none;
	            
	            justify-content: center;
	            top:0;
	            left:0;

	            width:100%;
	            height:100%;

	            background-color: rgba(0,0,0,0.4);
	        }
			
			
			.modal_body{
			            position:absolute;
			            top:50%; /*모달을 화면가운데 놓기위함. */
			        

			            width:600px;  /*모달의 가로크기 */
			            height:500px; /*모달의 세로크기 */

			            padding:40px;  

			            text-align: center;

			            background-color: rgb(255,255,255); /*모달창 배경색 흰색*/
			            border-radius:10px; //테두리 
			            box-shadow:0 2px 3px 0 rgba(34,36,38,0.15); /*테두리 그림자 */

			            transform:translateY(-50%); /*모듈창열었을때 위치설정 가운데로 */
			        }
					
					
	    </style>	
	
		
</head>
<body>
    <div class="container mt-5">
        <h2>재고조회</h2>
		<button class="btn-open-modal">등록</button>
		<button class="btn-open-modal2">수정</button>
        <table id="datatablesSimple" class="table table-striped table-hover">
            <thead>
                <tr>
					<th>원자재코드</th>
					<th>원자재명</th>
					<th>입고일자</th>
					<th>재고수량</th>
					<th>만료일자</th>
					<th>단위</th>
                </tr>
            </thead>
			  <tbody>
				<!-- 재고 조회 로직  -->
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
	


			
			<div class="modal">
			        <div class="modal_body">
						<h2>재고등록</h2>
						<!-- 원자재코드 -->
						<div class="input-group mb-3">
							<input type="text" class="form-control" placeholder="원자재코드" aria-label="mrCode" aria-describedby="button-addon2">
						</div>


						<!-- 원자재명 -->
						<div class="input-group mb-3">
							<input type="text" class="form-control" placeholder="원자재명" aria-label="mrName" aria-describedby="button-addon2">
						</div>


						<!-- 입고일자 -->
						<div class="input-group mb-3">
							<input type="text" class="form-control" placeholder="입고일자" aria-label="mrInboundDate" aria-describedby="button-addon2">
						</div>		

																					
						<!-- 만료일자 -->
						<div class="input-group mb-3">
							<input type="text" class="form-control" placeholder="유통기한" aria-label="mrExpiredDate" aria-describedby="button-addon2">
						</div>


						<!-- 수량 추가 -->
						<div class="input-group mb-3">
							<input type="text" class="form-control" placeholder="수량" aria-label="Recipient's username" aria-describedby="button-addon2">
						</div>


						<!--단위 -->
						<div class="input-group">
							<select class="form-select" id="mrCodeUnit" aria-label="Example select with button addon">
								<option selected>단위</option>
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
																			  
						<button class="btn btn-outline-secondary" type="button">등록하기</button>
						<button type="button" class="btn-close-modal" data-bs-dismiss="modal" aria-label="Close">닫기</button>
					</div>
				 </div>
				 
				 
				 
		

			    <script>
			        const modal = document.querySelector('.modal');
			        const btnOpenModal=document.querySelector('.btn-open-modal');
					const btnCloseModal=document.querySelector('.btn-close-modal');

			        btnOpenModal.addEventListener("click", ()=>{
			            modal.style.display="flex"; //모달 열기
			        });
					
					btnCloseModal.addEventListener("click", () => {
					    modal.style.display = "none"; // 모달 감추기
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
        });
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