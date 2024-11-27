 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>

						<nav id="menu">	
						<ul class="links">
							<li><h5>로그인</h5></li>
								<%-- Ex02 로그인 기능을 만들어 봅시다. --%>	
								<form action="login" method="post">
									<li><input name="email" type="text" placeholder="Email을 입력하세요"></li>
									<li><input name="pw" type="password" placeholder="PW를 입력하세요"></li>
									<li><input type="submit" value="로그인" class="button fit"></li>
								</form>
						</ul>
						<ul class="actions vertical">
							<li><h5>회원가입</h5></li>
								<%-- Ex01 회원가입 기능을 만들어 봅시다. --%>
								<form action="join" method="post">
									<li><input id="memID" name="memID" type="text" placeholder="ID를 입력하세요"></li>
									<!-- <li> <p id="result"> </p> </li> -->
									<li><input name="memPW" type="password" placeholder="PW를 입력하세요"></li>
									<li><input name="memName" type="text" placeholder="이름을 입력하세요"></li>
									<li><input name="memPhone" type="text" placeholder="전화번호를 입력하세요"></li>
									<li>
										본사 <input name="memType" type="radio" value="admin">
										사장님 <input name="memType" type="radio" value="operator">
									</li>
									<li><input type="submit" value="회원가입" class="button fit"></li>
								</form>
						</ul>
					</nav>	
					

							
							


		
			
					
</body>
</html>