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
	ArrayList<Category> cateList = (ArrayList<Category>) request.getAttribute("cateList");
%>
<div class="content container" id="content">
	<h2 class="title">제품 등록</h2>
	<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/FileUpload" method="post" enctype="multipart/form-data">
		<table class="table">
			<tbody>
				<tr>
					<th>상품분류</th>
					<td>
						<select name="cateNo" id="cateNo" class="custom-select custom-select-lg mb-3">
							<% 
								for(int i=0;i<cateList.size();i++){
									Category cate = cateList.get(i);
							%>
							<option value="<%=cate.getCateNo() %>"><%=cate.getCateName() %></option>
							<%
								}
							%>
						</select>
					</td>
				</tr>
				<tr>
					<th>상품명</th>
					<td><input type="text" name="proName" id="title" placeholder="제목 입력" class="form-control" autofocus required /></td>
				</tr>
				<tr>
					<th>제품 설명</th>
					<td><textarea cols="80" rows="6" name="proSpec" id="proSpec" class="form-control" required></textarea></td>
				</tr>
				<tr>
					<th>제품 가격</th>
					<td><input type="text" name="oriPrice" id="oriPrice" class="form-control" required></td>
				</tr>
				<tr>
					<th>할인율</th>
					<td><input type="text" name="discountRate" id="discountRate" class="form-control" required></td>
				</tr>
				<tr>
					<th>제품 이미지1</th>
					<td><input type="file" name="proPic" id="proPic" accept="image/*" class="form-control" required></td>
				</tr>
				<tr>
					<th>제품 이미지2</th>
					<td><input type="file" name="proPic2" id="proPic2" accept="image/*" class="form-control"></td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<input type="submit" name="submit-btn" class="btn btn-dark" value="제품 등록">
			<input type="reset" name="reset-btn" class="btn btn-dark" value="취소">
			<a href="<%=request.getContextPath() %>/GetProductListCtrl" class="btn btn-dark">목록으로</a>
		</div>
	</form>	
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