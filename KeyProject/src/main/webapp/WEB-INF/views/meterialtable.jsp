<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>재고관리</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/keyProject.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <header id="upper_nav">
            <a href="realindex.jsp"><h2>Coffee Lounge</h2></a>
            <nav>
                <a id="logout" href="logout.jsp">Logout</a>
            </nav>
        </header>
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

        <main>
            <div id="layoutSidenav_content">
                <div class="container-fluid px-20">
                    <br>
                    <h2 class="mt-4">재고관리</h2>
                    <ol class="breadcrumb mb-4">
                        <!-- Breadcrumb 내용 추가 가능 -->
                    </ol>

                    <div class="card mb-4">
                        <div class="card-header">
                            <div class="btn-group cen1" role="group" aria-label="Basic outlined example">
                                <button type="button" class="btn btn-outline-primary"><a href="itemInsert.jsp">등록</a></button>
                                <button type="button" class="btn btn-outline-primary"><a href="itemUpdateDelete.jsp">수정 및 삭제</a></button>
                            </div>
                        </div>
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
                                    <%
                                        // 더미 데이터 예제 (실제 데이터는 DB에서 가져옴)
                                        String[][] dummyData = {
                                            {"ITEM001", "원두", "2024-11-03 16:57:20", "20000", "2024-12-03", "g"},
                                            {"ITEM002", "원두", "2024-11-23 16:57:20", "10000", "2024-12-23", "g"},
                                            {"ITEM003", "우유", "2024-11-20 16:57:21", "200000", "2024-12-20", "ml"},
                                            {"ITEM004", "케이크", "2024-11-21 16:57:21", "50", "2024-12-21", "개"}
                                        };

                                        for (String[] item : dummyData) {
                                            out.println("<tr>");
                                            for (String data : item) {
                                                out.println("<td>" + data + "</td>");
                                            }
                                            out.println("</tr>");
                                        }
                                    %>
                                </tbody>
                            </table>
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
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>