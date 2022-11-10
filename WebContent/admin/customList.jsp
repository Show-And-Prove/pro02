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
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css" type="text/css">

<style>
.title { padding-top:36px; padding-bottom:20px; }
#content_row { min-height:calc(100vh - 84px); }
</style>
</head>
<body>
<%
	List<Custom> cusList = (ArrayList<Custom>) request.getAttribute("cusList");
%>
<%@ include file="../header.jsp" %>
<div class="container-fluid" id="content">
<div class="row" id="content_row">
    <%@ include file="admin_sidebar.jsp" %>
    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
		<h2 class="title">공지사항 목록</h2>
		<table class="table">
			<thead>
				<tr>
					<th>연번</th><th>아이디</th><th>이름</th><th>가입일</th><th>회원등급</th>
				</tr>
			</thead>
			<tbody>
			<% for(int i=0;i<cusList.size();i++){
				Custom vo = cusList.get(i);
			%>
			<tr>
				<td><%=cusList.size()-i %></td>
				<td><a href="<%=request.getContextPath() %>/GetCustomDetailCtrl?cusId=<%=vo.getCusId() %>"><%=vo.getCusId() %></a></td>
				<td><%=vo.getCusName() %></td>
				<td><%=vo.getRegDate() %></td>
				<td><%
				if(vo.getLevel()==0) {
					out.println("<span>준회원</span>");
				} else if(vo.getLevel()==1){
					out.println("<span>정회원</span>");
				} else if(vo.getLevel()==2){
					out.println("<span>우수회원</span>");
				} else if(vo.getLevel()==3){
					out.println("<span>VIP회원</span>");
				} else {
					out.println("<span>관리자</span>");
				}
				%></td>
			</tr>
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