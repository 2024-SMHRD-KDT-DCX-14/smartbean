<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>재고관리</title>
        <link href="assets/css/keyProject.css" rel="stylesheet">
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
	</head>
    <body class="sb-nav-fixed">
        <header id="upper_nav">
            <a href="realindex.jsp"><h2>Coffee Lounge</h2></a>
            <nav>
                <a id="logout" href="logout.jsp">Logout</a>
            </nav>
        </header>
		
		<body>
		    <div class="container mt-5">
		        <h1>Bootstrap + Simple DataTables 예제</h1>
		        <table id="exampleTable" class="table">
		            <thead>
		                <tr>
		                    <th>이름</th>
		                    <th>직업</th>
		                    <th>연령</th>
		                    <th>국가</th>
		                </tr>
		            </thead>
		            <tbody>
		                <tr>
		                    <td>김철수</td>
		                    <td>개발자</td>
		                    <td>28</td>
		                    <td>한국</td>
		                </tr>
		                <tr>
		                    <td>이영희</td>
		                    <td>디자이너</td>
		                    <td>31</td>
		                    <td>일본</td>
		                </tr>
		                <tr>
		                    <td>John Doe</td>
		                    <td>Manager</td>
		                    <td>45</td>
		                    <td>USA</td>
		                </tr>
		            </tbody>
		        </table>
		    </div>
        <div id="side_nav">
            <nav>
                <div class="side_nav_list">
                    <div class="sidenav_menu_heading">상품관리</div>
                    <div class="side_nav_in_list">
                        <a href="order.jsp">주문/결제</a> <br>
                        <a href="orderHistory.jsp">주문 내역 확인</a> <br>
                        <a href="coffeeManagement.jsp">커피 상품관리</a> <br>
                        <a href="dessertManagement.jsp">디저트 상품관리</a> <br>
                    </div>
                </div>
                <div class="side_nav_list">
                    <div class="sidenav_menu_heading">재고관리</div>
                    <div class="side_nav_in_list">
                        <a href="inventory.jsp">재고조회</a> <br>
                        <a href="vendorContact.jsp">Vendor 연락처</a> <br>
                        <a href="inventorySettings.jsp">재고설정</a> <br>
                    </div>
                </div>
                <div class="side_nav_list">
                    <div class="sidenav_menu_heading">대시보드</div>
                    <div class="side_nav_in_list">
                        <a href="dailySales.jsp">일별 매출</a> <br>
                        <a href="hourlySales.jsp">시간별 매출</a> <br>
                        <a href="monthlySales.jsp">월별 매출</a> <br>
                        <a href="quarterlySales.jsp">분기별 매출</a> <br>
                        <a href="menuSales.jsp">메뉴별 매출</a> <br>
                    </div>
                </div>
            </nav>
        </div>

		

            <div id="layoutSidenav_content">
				<main>
                <div class="container-fluid px-20">
                    <br>
                    <h2 class="mt-4">재고관리</h2>
                    <ol class="breadcrumb mb-4">
                        <!-- Breadcrumb 내용 추가 가능 -->
                    </ol>

                    <div class="card mb-4">
                        <div class="card-header">
                            <div class="btn-group cen1" role="group" aria-label="Basic outlined example">
								<button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#registermodal">
								    등록
								</button>
                                <button type="button" class="btn btn-outline-primary"><a href="materialregister">등록</a></button>
                                <button type="button" class="btn btn-outline-primary"><a href="">수정</a></button>
                            </div>
                        </div>
						
						
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table me-1"></i>
                        <div class="card-body">
                            <table id="datatablesSimple">
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
                                <tfoot>
                                    <tr>
                                        <th>원자재코드</th>
                                        <th>원자재명</th>
                                        <th>입고일자</th>
                                        <th>재고수량</th>
                                        <th>만료일자</th>
                                        <th>단위</th>
                                    </tr>
                                </tfoot>
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
                    </div>
                </div>
            
        </main>
        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; SmartCoffeeBean 2024</div>
                </div>
            </div>
        </footer>
		
		
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="registermodal" aria-hidden="true">
		    <div class="modal-dialog">
		        <div class="modal-content">
		            <div class="modal-header">
		                <h5 class="modal-title" id="exampleModalLabel">재고 추가</h5>
						
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
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">닫기</button>
		            </div>
		        </div>
		    </div>
		</div>
		
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>

	<!-- Custom Script -->
	<script>
	    const myModal = document.getElementById('myModal')
	    const myInput = document.getElementById('myInput')

	    myModal.addEventListener('shown.bs.modal', () => {
	        myInput.focus()
	    })
	</script>
	</body>
</html>