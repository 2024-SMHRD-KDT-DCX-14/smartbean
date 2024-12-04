<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>order</title>
	<link href="assets/css/style.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
body {
	margin-left: 225px;
	height: 150vh;
}
</style>

</head>
<body>
	<%@ include file="index.jsp"%>
	<br><br><br>
	<h4>주문/결제</h4>
	<div class="h-100 p-1">
		<div class="row bg-light">

			<div class="col-sm-8">
				<div class="card">
					<div class="crad-body p-3">

						<!-- 메뉴 선택 버튼 커피/디저트 -->
						<h5>메뉴</h5>
						<hr>
						<ul class="nav nav-pills mb-3 " id="pills-tab" role="tablist">
							<li class="nav-item" role="presentation">
								<button class="btn btn-outline-secondary" id="pills-drink-tab"
									data-bs-toggle="pill" data-bs-target="#pills-drink"
									type="button" role="tab" aria-controls="pills-drink"
									aria-selected="true">음료</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="btn btn-outline-secondary" id="pills-dessert-tab"
									data-bs-toggle="pill" data-bs-target="#pills-dessert"
									type="button" role="tab" aria-controls="pills-dessert"
									aria-selected="false">디저트</button>
							</li>
						</ul>


						<!-- 커피 메뉴 -->
						<div class="tab-content" id="pills-tabContent">
							<div class="tab-pane fade show active" id="pills-drink"
								role="tabpanel" aria-labelledby="pills-drink-tab" tabindex="0">
								<div class="row row-cols-1 row-cols-md-4 g-4">
									<div class="col">
										<div class="card" onclick="orderbasket('M001', '아메리카노(ICE)', '2000');">
											<img
												src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110563]_20210426095937808.jpg"
												class="card-img-top" alt="...">
											<div class="card-body">
												<h5 class="card-title">아메리카노(ICE)</h5>
												<p class="card-text">2000</p>
											</div>
										</div>
									</div>
									<div class="col">
										<div class="card" onclick="orderbasket('M002', '아메리카노(HOT)', '2000');">
											<img
												src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[94]_20210430103337157.jpg"
												class="card-img-top" alt="...">
											<div class="card-body">
												<h5 class="card-title">아메리카노(HOT)</h5>
												<p class="card-text">2000</p>
											</div>
										</div>
									</div>
									<div class="col">
										<div class="card" onclick="orderbasket('M003', '카페라떼(ICE)', '3000');">
											<img
												src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110569]_20210415143035989.jpg"
												class="card-img-top" alt="...">
											<div class="card-body">
												<h5 class="card-title">카페라떼(ICE)</h5>
												<p class="card-text">3000</p>
											</div>
										</div>
									</div>
									<div class="col">
										<div class="card" onclick="orderbasket('M004', '카페라떼(HOT)', '3000');">
											<img
												src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[41]_20210415133833725.jpg"
												class="card-img-top" alt="...">
											<div class="card-body">
												<h5 class="card-title">카페라떼(HOT)</h5>
												<p class="card-text">3000</p>
											</div>
										</div>
									</div>
									<div class="col">
										<div class="card" onclick="orderbasket('M005', '카푸치노(ICE)', '4000');">
											<img
												src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110601]_20210415143400773.jpg"
												class="card-img-top" alt="...">
											<div class="card-body">
												<h5 class="card-title">카푸치노(ICE)</h5>
												<p class="card-text">4000</p>
											</div>
										</div>
									</div>
									<div class="col">
										<div class="card" onclick="orderbasket('M006', '카푸치노(HOT)', '4000');">
											<img
												src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[38]_20210415154821991.jpg"
												class="card-img-top" alt="...">
											<div class="card-body">
												<h5 class="card-title">카푸치노(HOT)</h5>
												<p class="card-text">4000</p>
											</div>
										</div>
									</div>
								</div>

								<!-- 디저트 메뉴 -->
							</div>
							<div class="tab-pane fade" id="pills-dessert" role="tabpanel"
								aria-labelledby="pills-dessert-tab" tabindex="0">
								<div class="row row-cols-1 row-cols-md-4 g-4">
									<div class="col">
										<div class="card" onclick="orderbasket('M008', '치즈케익', '5000');">
											<img
												src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000000132]_20210422112714121.jpg"
												class="card-img-top" alt="...">
											<div class="card-body">
												<h5 class="card-title">치즈케익</h5>
												<p class="card-text">5000</p>
											</div>
										</div>
									</div>
									<div class="col">
										<div class="card" onclick="orderbasket('M007', '티라미수', '5000');">
											<img
												src="https://image.istarbucks.co.kr/upload/store/skuimg/2023/06/[9300000001907]_20230619130922058.jpg"
												class="card-img-top" alt="...">
											<div class="card-body">
												<h5 class="card-title">티라미수</h5>
												<p class="card-text">5000</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-4">

				<div class="card">
					<div class="card-body">
						<!-- 주문 내역 담기 -->
						<h5 class="d-flex justify-content-between align-items-center">
							<span>주문내역</span>
							<button onclick="orderbasketClear();" class="btn btn-outline-secondary">Clear</button>
						</h5>
						<hr>
						<h5 class="d-flex justify-content-between align-items-center">
							<span>메뉴명</span> <span>가격</span>
						</h5>
						<hr>

						<!-- 클릭하면 메뉴가 담기는 LI 태그 -->
						<ul id="orderlist" class="list-unstyled">
							<li class="d-flex justify-content-between align-items-center"></li>
						</ul>
						<hr>
						<!-- 주문 메뉴 수량 담기 -->
						<ul class="list-unstyled mb-0">
							<li class="d-flex justify-content-between align-items-center"><big
								class="fw-bold">총 수량:</big> <big id="totalitems"
								class="crad-text fw-bold">0</big></li>
							<li class="d-flex justify-content-between align-items-center"><big
								class="fw-bold">총 금액:</big> <big>\<span id="totalcost"
									class="crad-text fw-bold">0</span></big></li>
							<hr>
							<li>
								<button id="pay_action" class="btn btn-secondary btn-lg w-100">CHECK
									OUT</button>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script>
		const orderIdArray = []; // 주문 메뉴의 인덱스 담을 배열
		let num = 0; // 인덱스를 담을 변수선언 ex) 첫번째로 담기는 메뉴가 0번 인덱스 부여

		const itemCodeArray = []; // 메뉴 상품 코드 담기
		const orderItemsArray = []; // 주문 메뉴 내역(장바구니)
		const orderPriceArray = []; // 주문 가격(장바구니)
		const orderItemQuantity = []; // 주문 메뉴 수량

		const totle = [];

		/* 주문 내역을 담는 기능 */
		function orderbasket(itemcode ,itemname, itemprice) {

			let result = orderItemsArray.includes(itemname);

			if (result) {

				let index = orderItemsArray.indexOf(itemname);
				let orderId = orderIdArray[index]; // orderId 가져오기
				// 해당 항목의 수량 증가
				incrementItem(orderId);

			} else {
				orderIdArray.push(num); // 주문 메뉴 아이디 

				// 주문 메뉴, 가격이 배열에 담김
				orderItemsArray.push(itemname);
				orderPriceArray.push(Number(itemprice));
				
				console.log(itemprice);
				console.log(orderPriceArray);
				
				itemCodeArray.push(itemcode);
				orderItemQuantity.push(1); // 메뉴를 선택하면 최초 수량 1로 들어감

				/* 주문현황 div의 ui 태그 데이터 가져오기 */
				let orderlist = document.getElementById('orderlist'); // orderlist 객체를 불러옴

				const orderitem = document.createElement('li'); // Li 태그만들기를 orderitem에 담음
				orderitem.className = 'd-flex justify-content-between align-items-center'; // li 태그에 클래스 부여

				const spantag = document.createElement('span'); // span 태그 만들걸 spantag에 담음

				// 텍스트 노드 생성 ( 넣어줄 값)
				const orderitemname = document.createTextNode(itemname);
				const orderitemprice = document.createTextNode(itemprice + '원');

				// 스팬태그에 클래스 이름 부여
				spantag.className = 'text-danger'

				// delete 버튼 만들기
				const deletebutton = document.createElement('img');
				deletebutton
						.setAttribute(
								'src',
								'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1n3bMMdFvjsc5IHKoYxkfjuYDxAToALBphw&s')
				deletebutton.setAttribute('type', 'button');
				deletebutton.setAttribute('style', 'width:15px');
				deletebutton.setAttribute('onclick', 'delectItem(num, this)'); // 태그에 클릭기능부여, deleteItem함수 실행

				/* 값 넣어주기 */
				// span태그에 orderitemprice 텍스트를 넣음.
				spantag.appendChild(orderitemprice);

				// li태그에 orderitemname 텍스트 노드를 넣어줌
				orderitem.appendChild(orderitemname);

				// li 태그안에 spantag를 넣어줌
				// <li>메뉴명<span>가격</span></li> << 요렇게 들어가 있음
				orderitem.appendChild(spantag);

				// li태그안에 +, - 버튼 만들어주기
				const incrementButton = document.createElement('img');
				incrementButton.setAttribute('src',
						'https://emojigraph.org/media/whatsapp/plus_2795.png');
				incrementButton.setAttribute('type', 'button');
				incrementButton.setAttribute('style', 'width:15px');
				incrementButton.setAttribute('onclick', 'incrementItem(' + num
						+ ')');

				const decrementButton = document.createElement('img');
				decrementButton.setAttribute('src',
						'https://emojigraph.org/media/whatsapp/minus_2796.png');
				decrementButton.setAttribute('type', 'button');
				decrementButton.setAttribute('style', 'width:15px');
				decrementButton.setAttribute('onclick', 'decrementItem(' + num
						+ ')');

				const count = document.createElement('span');
				count.className = "px-3 fw-bold item" + num; // num은 배열의 인덱스번호
				const counttext = document.createTextNode('1');

				// count span태그에 택스트 1넣기
				count.appendChild(counttext);

				orderitem.appendChild(decrementButton);

				orderitem.appendChild(count);

				orderitem.appendChild(incrementButton);

				// deletebutton을 li tag에 추가함.
				orderitem.appendChild(deletebutton);

				// Attach or append the LI tag (child) to parent id=ORDERLIST 
				// 아이디가 orderlist인 부모에 orderitem li tag를 추가함.
				orderlist.appendChild(orderitem);
			}

			// orderIdArray 증가
			num++;

			totalitems(); // 주문 합계 수량
			costitems(); // 주문 전체 비용

		}

		/* 전체 수량 담기 기능 */
		function totalitems() {

			// document.getElementById("totalitems").innerText = orderItemsArray.length;

			let itemsum = 0;

			for (let i = 0; i < orderItemQuantity.length; i++) {
				itemsum += parseInt(orderItemQuantity[i]); // 0번째 수량부터 합계
			}

			document.getElementById("totalitems").innerText = itemsum; // 전체 수량합계

		}

		/* 전체 비용 담기 */
		function costitems() {
			// 전체 수량 x 가격을 담기위한 임시 배열생성
			const totalTempArray = [];
			// 콜백함수 arr.map(function(element, index, array){  }, this);
			orderItemQuantity.map(function(quantity, index) {
				totalTempArray.push(quantity * orderPriceArray[index]);
			})

			let pricesum = 0;

			for (let i = 0; i < totalTempArray.length; i++) {
				pricesum += parseInt(totalTempArray[i]);
			}

			document.getElementById("totalcost").innerText = pricesum;

		}

		/* 장바구니 싹 비우기 */
		function orderbasketClear() {
			
			let orderlist = document.getElementById('orderlist');
			
			orderlist.innerHTML = ''; // 메뉴명 클리어
			orderItemsArray.length = 0; // 메뉴장바구니를 길이 0으로
			orderPriceArray.length = 0; // 가격장바구니를 길이 0으로
			orderItemQuantity.length = 0; // 메뉴 수량배열 초기화
			orderIdArray.length = 0; // orderid 인덱스를 담을 배열 초기화
			itemCodeArray.length = 0; // 상품코드 배열 초기화
			
			num = 0; // 인덱스 번호도 초기화

			totalitems(); // 합계 구하도록
			costitems(); // 합계구하도록
		}

		/* 쓰레기통버튼으로 다날려버리기 해당 인덱스(메뉴) 수량 */
		function delectItem(orderId, button) {

			const indexnum = orderIdArray.indexOf(orderId); //인덱스 번호를 찾음 // 배열에서 orderId 값이 처음으로 나타나는 위치(인덱스)를 반환

			orderIdArray.splice(indexnum, 1); // 해당인덱스번호에 1개만 삭제
			orderItemsArray.splice(indexnum, 1); // 해당 인덱스번호 아이템 수량 1 감소 (요소 1개 삭제)
			orderPriceArray.splice(indexnum, 1); // 해당 인덱스번호 가격 감소 (요소 1개 삭제)
			orderItemQuantity.splice(indexnum, 1); // 해당 인덱스번호 수량 삭제
			itemCodeArray.splice(indexnum, 1); // 해당 상품코드 삭제하기
			// splice = manupilates the original array
			// slice = clone + edit the colsearray

			/* 수량이 감소했으니 재 계산되어야 함. */
			totalitems();
			costitems();

			orderlist.removeChild(button.parentElement);
			// orderlist라는 부모 요소에서, button의 부모 요소(button.parentElement)를 제거합니다.
		}

		function decrementItem(orderId) {
			let minus = document.querySelector('.item' + orderId);

			// 인덱스 번호를 찾음 // 배열에서 orderId 값이 처음으로 나타나는 위치(인덱스)를 반환
			let indexnum = orderIdArray.indexOf(orderId);

			orderItemQuantity[indexnum] = parseInt(minus.innerText) - 1; // 해당 인덱스 번호 배열에 담긴 수량을 넣어줌

			totalitems();
			costitems();

			if (parseInt(minus.innerText) == 1) {

				orderIdArray.splice(indexnum, 1); // 해당인덱스번호에 1개만 삭제
				orderItemsArray.splice(indexnum, 1); // 해당 인덱스번호 아이템 수량 1 감소 (요소 1개 삭제)
				orderPriceArray.splice(indexnum, 1); // 해당 인덱스번호 가격 감소 (요소 1개 삭제)
				orderItemQuantity.splice(indexnum, 1); // 마이너스 1이하면 아이템 수량도 사라지게!
				itemCodeArray.splice(indexnum, 1); // 해당 아이템 코드 삭제
				
				orderlist.removeChild(minus.parentElement);

				totalitems();
				costitems();

			} else {
				minus.innerText = parseInt(minus.innerText) - 1;
			}

		}

		function incrementItem(orderId) {
			let plus = document.querySelector('.item' + orderId);

			// 인덱스 번호를 찾음 // 배열에서 orderId 값이 처음으로 나타나는 위치(인덱스)를 반환
			let indexnum = orderIdArray.indexOf(orderId);

			orderItemQuantity[indexnum] = parseInt(plus.innerText) + 1; // 해당 인덱스 번호 배열에 담긴 수량을 넣어줌

			plus.innerText = parseInt(plus.innerText) + 1;

			totalitems();
			costitems();

		}

		$(document).ready(function() {
			console.log("Document is ready!"); // 디버깅용 로그

			$('#pay_action').on('click', function() {
				alert('Checkout button clicked!');
				var totalItems = $('#totalitems').text();
				var totalCost = $('#totalcost').text();
				
				var dataToSend = {
					totalItems : totalItems,
					totalCost : totalCost,
					itemCode : itemCodeArray,
					orderItems : orderItemsArray, 
					orderPrices : orderPriceArray,
					orderQuantities : orderItemQuantity
				};
				
				console.log(dataToSend);
				
 				 $.ajax({
 					url: "/orderstore",
 				    method: 'POST',
 				    contentType: 'application/json', // JSON 형식 지정
 				    data: JSON.stringify(dataToSend),
			        success: function(response) {
			            // Handle success response here
			            alert('주문 접수 완료되었습니다.');
			            orderbasketClear(); // 전송하고 주문내역 초기화
			            console.log(response);  // Log the server response for debugging
			        },
			        error: function(xhr, status, error) {
			            // Handle error response here
			            alert('Error processing checkout. Please try again.');
			            console.error('Error: ' + error);
			        }  
				 })  
				 
				
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

	<!--부트스트랩 scripts  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>