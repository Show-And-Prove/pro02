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
    <style>
        .title {
            padding-top: 36px;
            padding-bottom: 20px;
        }
    </style>
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
.tb_ck  { display:none; }
#parsel0, #parsel1, #parsel2, #parsel3 { display:none; }
#tb_ck1:checked ~ #parsel0 { display:table; }
#tb_ck2:checked ~ #parsel1 { display:table; }
#tb_ck3:checked ~ #parsel2 { display:table; }
#tb_ck4:checked ~ #parsel3 { display:table; }
.table caption { caption-side:top; }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<%
	List<Parsel> parList = (ArrayList<Parsel>) request.getAttribute("parList");
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
			<h2 class="title">배송 관리 목록</h2>
			<input type="radio" name="tb_ck" class="tb_ck" id="tb_ck1" checked>
			<input type="radio" name="tb_ck" class="tb_ck" id="tb_ck2">
			<input type="radio" name="tb_ck" class="tb_ck" id="tb_ck3">
			<input type="radio" name="tb_ck" class="tb_ck" id="tb_ck4">
			<div class="btn-group" id="tb_btn_box">
				<label for="tb_ck1" class="btn btn-primary">배송전</label>
				<label for="tb_ck2" class="btn btn-outline-primary">배송중</label>
				<label for="tb_ck3" class="btn btn-outline-primary">도착</label>
				<label for="tb_ck4" class="btn btn-outline-primary">구매결정</label>
			</div>
			<table class="table" id="parsel0">
				<caption><h3>배송전</h3></caption>
				<thead>
					<tr>
						<th>연번</th><th>배송지</th><th>고객 연락처</th>
						<th>배송회사</th><th>배송자 연락처</th>
						<th>화물코드</th>
					</tr>
				</thead>
				<tbody>
				<% for(int i=0;i<parList.size();i++){
					Parsel vo = parList.get(i);
					if(vo.getParselState()==0){
				%>
				<tr>
					<td><%=parList.size()-i %></td>
					<td><%=vo.getParselAddr() %></td>
					<td><%=vo.getCusTel() %></td>
					<td><%=vo.getParselCompany() %></td>
					<td><%=vo.getParselTel() %></td>
					<td>
						<a href="<%=vo.getParselUrl(vo.getParselCompany()) %><%=vo.getBaleCode() %>" target="_blank"><%=vo.getBaleCode() %></a>
					</td>
				</tr>
				<%
					}
				} 
				%>	
				</tbody>
			</table>
			<table class="table" id="parsel1">
				<caption><h3>배송중</h3></caption>
				<thead>
					<tr>
						<th>연번</th><th>배송지</th><th>고객 연락처</th>
						<th>배송회사</th><th>배송자 연락처</th>
						<th>화물코드</th>
					</tr>
				</thead>
				<tbody>
				<% for(int i=0;i<parList.size();i++){
					Parsel vo = parList.get(i);
					if(vo.getParselState()==1){
				%>
				<tr>
					<td><%=parList.size()-i %></td>
					<td><%=vo.getParselAddr() %></td>
					<td><%=vo.getCusTel() %></td>
					<td><%=vo.getParselCompany() %></td>
					<td><%=vo.getParselTel() %></td>
					<td>
						<a href="<%=vo.getParselUrl(vo.getParselCompany()) %><%=vo.getBaleCode() %>" target="_blank"><%=vo.getBaleCode() %></a>
					</td>
				</tr>
				<%
					}
				} 
				%>	
				</tbody>
			</table>
			<table class="table" id="parsel2">
				<caption><h3>도착</h3></caption>
				<thead>
					<tr>
						<th>연번</th><th>배송지</th><th>고객 연락처</th>
						<th>배송회사</th><th>배송자 연락처</th>
						<th>화물코드</th>
					</tr>
				</thead>
				<tbody>
				<% for(int i=0;i<parList.size();i++){
					Parsel vo = parList.get(i);
					if(vo.getParselState()==2){
				%>
				<tr>
					<td><%=parList.size()-i %></td>
					<td><%=vo.getParselAddr() %></td>
					<td><%=vo.getCusTel() %></td>
					<td><%=vo.getParselCompany() %></td>
					<td><%=vo.getParselTel() %></td>
					<td>
						<a href="<%=vo.getParselUrl(vo.getParselCompany()) %><%=vo.getBaleCode() %>" target="_blank"><%=vo.getBaleCode() %></a>
					</td>
				</tr>
				<%
					}
				} 
				%>	
				</tbody>
			</table>
			<table class="table" id="parsel3">
				<caption><h3>구매결정</h3></caption>
				<thead>
					<tr>
						<th>연번</th><th>배송지</th><th>고객 연락처</th>
						<th>배송회사</th><th>배송자 연락처</th>
						<th>화물코드</th>
					</tr>
				</thead>
				<tbody>
				<% for(int i=0;i<parList.size();i++){
					Parsel vo = parList.get(i);
					if(vo.getParselState()>=3){
				%>
				<tr>
					<td><%=parList.size()-i %></td>
					<td><%=vo.getParselAddr() %></td>
					<td><%=vo.getCusTel() %></td>
					<td><%=vo.getParselCompany() %></td>
					<td><%=vo.getParselTel() %></td>
					<td>
						<a href="<%=vo.getParselUrl(vo.getParselCompany()) %><%=vo.getBaleCode() %>" target="_blank"><%=vo.getBaleCode() %></a>
					</td>
				</tr>
				<%
					}
				} 
				%>	
				</tbody>
			</table>
		</main>
		<script>
		$(document).ready(function(){
			$("#tb_btn_box label").click(function(){
				$(this).removeClass("btn-outline-primary").addClass("btn-primary");
				$(this).siblings("label").removeClass("btn-primary").addClass("btn-outline-primary");
			});
		});
		</script>
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