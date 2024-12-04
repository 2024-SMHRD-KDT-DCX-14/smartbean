<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 - Smart Coffee Bean</title>
    <!-- CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link href="assets/css/keyProject.css" rel="stylesheet">
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="d-flex flex-column vh-100">
    <!-- Main Content -->
    <main class="flex-grow-1 d-flex justify-content-center align-items-center">
        <div class="card shadow-lg border-2 rounded-lg" style="width: 400px;">
            <div class="card-body">
           
                <form action="/joinProcess" method="post">
                    <h3 class="text-center text-secondary mb-4">회원가입</h3>

                    <!-- ID -->
                    <div class="input-group mb-3">
                        <span class="input-group-text">
                            <i class="fas fa-user"></i>
                        </span>
                        <input type="text" class="form-control" name="memId" placeholder="아이디" required>
                    </div>
					
					<!-- 중복검사 결과 -->
					<span id="checkResult" class="text-danger small"></span>

                    <!-- PW -->
                    <div class="input-group mb-3">
                        <span class="input-group-text">
                            <i class="fas fa-lock"></i>
                        </span>
                        <input type="password" class="form-control" name="memPw" placeholder="비밀번호" required>
                    </div>

                    <!-- NAME -->
                    <div class="input-group mb-3">
                        <span class="input-group-text">
                            <i class="fas fa-user"></i>
                        </span>
                        <input type="text" class="form-control" name="memName" placeholder="이름" required>
                    </div>

                    <!-- PHONE -->
                    <div class="input-group mb-3">
                        <span class="input-group-text">
                            <i class="fas fa-phone"></i>
                        </span>
                        <input type="text" class="form-control" name="memPhone" placeholder="휴대전화번호" required>
                    </div>

                    <!-- ADDRESS -->
                    <div class="input-group mb-3">
                        <span class="input-group-text">
                            <i class="fas fa-home"></i>
                        </span>
                        <input type="text" class="form-control" name="memAddress" placeholder="지점명" required>
                    </div>

                    <!-- Submit -->
                    <div class="text-center mt-4">
                        <button type="submit" class="btn btn-outline-secondary w-100">회원가입</button>
                    </div>
                </form>
            </div>
            <div class="card-footer text-center py-3">
                <a href="login" class="small h3">이미 계정이 있습니까? 로그인</a>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="py-4 bg-light mt-auto">
        <div class="container text-center small text-muted">
            Copyright &copy; SmartCoffeeBean 2024
        </div>
    </footer>

    <!-- JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
</body>
</html>