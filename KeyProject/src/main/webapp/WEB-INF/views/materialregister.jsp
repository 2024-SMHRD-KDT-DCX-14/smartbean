<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>재고등록 - Smart Coffee Bean</title>
    <!-- CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link href="css/keyProject.css" rel="stylesheet">
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- Full screen modal -->
	<div class="modal-dialog modal-fullscreen-sm-down" id="registermodal">
		
		<!-- Main Content -->
		<main class="flex-grow-1 d-flex justify-content-center align-items-center">
		<form action="regist" method="post">
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
		</form>
		</main>
		

	<!-- Footer -->
	<footer class="py-4 bg-light mt-auto">
	    <div class="container text-center small text-muted">
	        Copyright &copy; SmartCoffeeBean 2024
	    </div>
	</footer>
	</div>
	
	
    <!-- JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
	<script src="scripts.js"></script>
	
	<script>
	    const myModal = document.getElementById('myModal')
	    const myInput = document.getElementById('myInput')

	    myModal.addEventListener('shown.bs.modal', () => {
	        myInput.focus()
	    })
	</script>
	
</body>
</html>
