<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!--파비콘 -->
    <link rel="shortcut icon" sizes="192*192" href="./img1/favicon/favicon.ico">
    <link rel="apple-touch-icon" href="./img1/favicon/favicon114.png">
    <link rel="apple-touch-icon-precomposed" href="./img1/favicon/favicon114.png">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <meta name="Generator" content="오설록" />
    <meta name="Keywords" content="오설록" />
    <meta name="description" content="오설록, 차와 제주가 선사하는 가치 있는 쉼" />
    <meta name="facebook-domain-verification" content="tdpu6fl67o5tlqp8etjrivmd5csnrk" />
    <title>오설록, 차와 제주가 선사하는 가치 있는 쉼 | 오설록</title>
    <!--메타포-->
    <meta property="og:title" content="오설록">
    <meta property="og:image" content="https://www.osulloc.com/kr/ko/static/images/OGImage.jpg">
    <meta property="og:description" content="오설록, 차와 제주가 선사하는 가치 있는 쉼" />
    <meta property="og:url" content="https://www.osulloc.com/">



    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Css Styles -->
    <!-- 절대경로로 설정해야 ctrl을 거치고 나서 정상출력 -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css" type="text/css">

    <link rel="stylesheet" href="../common.css">
<style>
.title { padding-top:36px; padding-bottom:20px; }
</style>
</head>
<body>

<%@ include file="../header.jsp" %>
<%
	Product vo = (Product) request.getAttribute("pro");
%>
        <div class="content container" id="content">
            <h2 class="title">상품 상세정보</h2>
            <table class="table">
                <tbody>
                    <tr>
                        <th>제품이미지</th>
                        <td><img src="<%=request.getContextPath() %>/upload/<%=vo.getProPic() %>" alt="<%=vo.getProName() %>"></td>
                    </tr>
                    <tr>
                        <th>제품번호</th>
                        <td><%=vo.getProNo() %></td>
                    </tr>
                    <tr>
                        <th>카테고리 번호</th>
                        <td><%=vo.getCateNo() %></td>
                    </tr>
                    <tr>
                        <th>제품명</th>
                        <td><%=vo.getProName() %></td>
                    </tr>
                    <tr>
                        <th>제품 설명</th>
                        <td><%=vo.getProSpec() %></td>
                    </tr>
                    <tr>
                        <th>제품가격</th>
                        <td>
                            판매가격 : <strong style="color:red"><%=vo.getProPrice() %></strong> <br>
                            세일전 가격 : (<del><%=vo.getOriPrice() %></del>) 
                        </td>
                    </tr>
                    <tr>
						<th>남은 수량</th>
						<td>
						<% if(vo.getAmount()!=0) { %>
								<%=vo.getAmount() %>
						<% } else { %>
						<strong style="color:red">[품절]</strong>해당 상품의 재고가 존재하지 않습니다.
						<% } %>
						</td>
					</tr>
                    
                </tbody>
            </table>
            <div class="btn-group">
                <a href="<%=request.getContextPath() %>/GetProductListCtrl" class="btn btn-dark">목록으로</a>
                <% if(sid.equals("admin")) { %>
                <a href="<%=request.getContextPath() %>/DeleteProductCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-dark">제품 삭제</a>
                <a href="<%=request.getContextPath() %>/UpdateProductCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-dark">제품 정보 수정</a>
                <a href="<%=request.getContextPath() %>/GetProductWearingCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-dark">제품 입고</a>
            	<% } %>
            	<% if(vo.getAmount()!=0) { 
            	%>
		<a href="<%=request.getContextPath() %>/GetSalesProductCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-danger">제품 구매</a>
		<a href="<%=request.getContextPath() %>/InsertCartCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-danger">장바구니 넣기</a>
		<% } %>
            </div>
        </div>

<%@ include file="../footer.jsp" %>
<!-- Js Plugins -->
    <script src="<%=request.getContextPath() %>/js/jquery-3.3.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/jquery.nice-select.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/jquery.nicescroll.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/jquery.magnific-popup.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/jquery.countdown.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/jquery.slicknav.js"></script>
    <script src="<%=request.getContextPath() %>/js/mixitup.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/main.js"></script>
</body>

</html>