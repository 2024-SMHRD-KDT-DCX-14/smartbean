<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>Register - Smart Coffee Bean</title>
        <link href="css/keyProject.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <main>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-7">
                        <div class="card shadow-lg border-2 rounded-lg mt-5">
                            <div class="card-body">
                                <form action="/joinProcess" method="post">
                                    <br>
                                    <h3 class="row justify-content-center form-select-m text-secondary">
                                        SMART COFFEE BEAN
                                    </h3>
                                    <br>

                                    <!-- ID -->
                                    <div class="input-group mb-3 w-50 p-3 cen123">
                                        <span class="input-group-text" id="MEM_ID">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                                <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0m4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4m-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10s-3.516.68-4.168 1.332c-.678.678-.83 1.418-.832 1.664z"/>
                                            </svg>
                                        </span>
                                        <input type="text" class="form-control" name="MEM_ID" placeholder="아이디" required>
                                        <div>
                                            <button type="button" class="btn btn-outline-secondary">중복확인</button>
                                        </div>
                                    </div>

                                    <!-- PW -->
                                    <div class="input-group mb-3 w-50 p-3 cen123">
                                        <span class="input-group-text" id="MEM_PW">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-lock" viewBox="0 0 16 16">
                                                <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2m3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2M5 8h6a1 1 0 0 1 1 1v5a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V9a1 1 0 0 1 1-1"/>
                                            </svg>
                                        </span>
                                        <input type="password" class="form-control" name="MEM_PW" placeholder="비밀번호" required>
                                    </div>

                                    <!-- NAME -->
                                    <div class="input-group mb-3 w-50 p-3 cen123">
                                        <span class="input-group-text">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                                <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0m4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4m-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10s-3.516.68-4.168 1.332c-.678.678-.83 1.418-.832 1.664z"/>
                                            </svg>
                                        </span>
                                        <input type="text" class="form-control" name="MEM_NAME" placeholder="이름" required>
                                    </div>

                                    <!-- PHONE -->
                                    <div class="input-group mb-3 w-50 p-3 cen123">
                                        <span class="input-group-text">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-phone" viewBox="0 0 16 16">
                                                <path d="M11 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zM5 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z"/>
                                                <path d="M8 14a1 1 0 1 0 0-2 1 1 0 0 0 0 2"/>
                                            </svg>
                                        </span>
                                        <input type="text" class="form-control" name="MEM_PHONE" placeholder="휴대전화번호" required>
                                    </div>
                                    
                                     <!-- ADDRESS -->
                                    <div class="input-group mb-3 w-50 p-3 cen123">
                                        <span class="input-group-text">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" fill="currentColor" class="bi bi-archive" viewBox="0 0 16 16">
                                                <path d="M0 2a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1v7.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 12.5V5a1 1 0 0 1-1-1zm2 3v7.5A1.5 1.5 0 0 0 3.5 14h9a1.5 1.5 0 0 0 1.5-1.5V5zm13-3H1v2h14zM5 7.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5"/>
                                            </svg>
                                        </span>
                                        <input type="text" class="form-control" name="MEM_ADDRESS" placeholder="지점명" required>
                                    </div>


                                    <div class="mt-4 mb-0 cen123">
                                        <button type="submit" class="btn btn-outline-secondary mb-3 w-50">등록하기</button>
                                    </div>
                                </form>
                            </div>
                            <div class="card-footer text-center py-3">
                                <div class="small"><a href="login">등록된 정보가 있습니까? 로그인</a></div>
                            </div>
                        </div>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>