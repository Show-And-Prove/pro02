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
	List<CartListVO> cartList = (ArrayList<CartListVO>) request.getAttribute("cartList");
%>
<div class="container-fluid" id="content">
	<div class="row" id="content_row">
		<% if(sid!=null && sid.equals("admin")) { %>
		<%@ include file="../admin/admin_sidebar.jsp" %>
		<% } %>
		<% if(sid!=null && sid.equals("admin")) { %>
		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
		<% } else { %>
		<main class="content container">
		<% } %>
			<h2 class="title">공지사항 목록</h2>
			<table class="table">
				<thead>
					<tr>
						<th>연번</th><th>제품명</th><th>제품사진</th><th>구매</th>
					</tr>
				</thead>
				<tbody>
				<% if(cartList.size()!=0) { %>
					<% for(int i=0;i<cartList.size();i++){
						CartListVO vo = cartList.get(i);
					%>
					<tr>
						<td><%=cartList.size()-i %></td>
						<td><%=vo.getProName() %> (구매가격 : <%=vo.getProPrice() %>)</td>
						<td><img src="upload/<%=vo.getProPic() %>" alt="<%=vo.getProName() %>" style="max-height:80px; width:auto;"></td>
						<td><a href="<%=request.getContextPath() %>/CartToSaleCtrl?proNo=<%=vo.getProNo() %>&cartNo=<%=vo.getCartNo() %>" class="btn btn-primary">구매하기</a></td>
					</tr>
					<% } %>
				<% } else { %>
					<tr><td colspan="4">장바구니에 담긴 데이터가 없습니다.</td></tr>
				<% } %>		
				</tbody>
			</table>
		</main>
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