<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <!-- CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link href="css/keyProject.css" rel="stylesheet">
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="d-flex flex-column vh-100">
    <!-- Main Content -->
    <main class="flex-grow-1 d-flex justify-content-center align-items-center">
        <div class="card shadow-lg border-2 rounded-lg" style="width: 400px;">
            <div class="card-body">
                <form action="loginProcess" method="post">
                    <h3 class="text-center text-secondary mb-4">로그인</h3>

					<br><br>
					
                    <!-- ID -->
                    <div class="input-group mb-3">
                        <span class="input-group-text">
                            <i class="fas fa-user"></i>
                        </span>
                        <input type="text" class="form-control" name="memId" placeholder="아이디" required>
                    </div>

                    <!-- PW -->
                    <div class="input-group mb-3">
                        <span class="input-group-text">
                            <i class="fas fa-lock"></i>
                        </span>
                        <input type="password" class="form-control" name="memPw" placeholder="비밀번호" required>
                    </div>

					<br>
					
                    <!-- Submit -->
                    <div class="text-center">
                        <button type="submit" class="btn btn-outline-secondary w-100">로그인</button>
                    </div>
                </form>
            </div>
            <div class="card-footer text-center py-3">
                <a href="password" class="small">비밀번호를 잃어버렸습니까? 비밀번호 찾기</a>
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
