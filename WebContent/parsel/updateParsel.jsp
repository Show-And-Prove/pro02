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
    </style>
</head>
<body>
<%@ include file="../header.jsp" %>
<%
	Parsel pro = (Parsel) request.getAttribute("parsel");
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
			<h2 class="title">배송 정보 등록 및 수정</h2>
			<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/UpdateParselProCtrl" method="post" onsubmit="return postCheck(this)">
				<table class="table">
					<tbody>
						<tr>
							<th style="max-width:200px;width:200px;">배송 코드</th>
							<td>
								<p><%=pro.getParselNo() %></p>
								<input type="hidden" name="parselNo" id="parselNo" value="<%=pro.getParselNo() %>">
							</td>
						</tr>
						<tr>
							<th>배송 업체 선택</th>
							<td>
								<% if(pro.getParselState()!=0) { %>
								<p><%=pro.getParselCompany() %></p>
								<% } %>
								<select name="parselCompany" id="parselCompany" placeholder="배송업체 선택" class="form-control" required>
									<option value="CJ대한통운">CJ대한통운</option>
									<option value="롯데택배">롯데택배</option>
									<option value="우체국택배">우체국택배</option>
									<option value="로젠택배">로젠택배</option>
									<option value="한진택배">한진택배</option>
									<option value="CU 편의점택배">CU 편의점택배</option>
									<option value="EMS 택배">EMS 택배</option>
									<option value="경동택배">경동택배</option>
								</select>
								
							</td>
						</tr>
						<tr>
							<th>화물 코드</th>
							<td>
								<% if(pro.getParselState()!=0) { %>
								<input type="text" name="baleCode" id="baleCode" placeholder="배송회사의 화물코드를 숫자만 입력" class="form-control" value="<%=pro.getBaleCode() %>" required />
								<% } else { %>
								<input type="text" name="baleCode" id="baleCode" placeholder="배송회사의 화물코드를 숫자만 입력" class="form-control" required />
								<% } %>								
							</td>
						</tr>
						<tr>
							<th>배송 기사 연락처</th>
							<td>
								<% if(pro.getParselState()!=0) { %>
								<input type="text" name="parselTel" id="parselTel" placeholder="배송회사의 화물코드를 숫자만 입력" class="form-control" value="<%=pro.getParselTel() %>" required />
								<% } else { %>
								<input type="tel" name="parselTel" id="parselTel" placeholder="배송기사 연락처 입력" class="form-control" required />
								<% } %>
							</td>
						</tr>
						<tr>
							<th>배송상태</th>
							<td>
								<% if(pro.getParselState()==0) { %>
								<p value="0">현재 상태 : <strong>배송전</strong></p>
								<% } else if(pro.getParselState()==1) { %>
								<p value="1">현재 상태 : <strong>배송중</strong></p>
								<% } else if(pro.getParselState()==2) { %>
								<p value="2">현재 상태 : <strong>도착</strong></p>
								<% } else if(pro.getParselState()==3) { %>
								<p value="3">현재 상태 : <strong>구매결정 완료</strong></p>
								<% } else { %>
								<p value="4">현재 상태 : <strong>점검중</strong></p>
								<% } %>
								<select name="parselState" id="parselState" class="form-control">
									<option value="0">배송전</option>
									<option value="1">배송중</option>
									<option value="2">도착</option>
									<option value="3">구매결정 완료</option>
									<option value="4">점검중</option>
								</select>
								<% if(pro.getParselState()!=0) { 
									if(pro.getParselCompany()=="CJ대한통운") {
								%>
									<p><a href="http://nplus.doortodoor.co.kr/web/detail.jsp?slipno=<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } else if(pro.getParselCompany()=="롯데택배") { %>	
									<p><a href="https://www.lotteglogis.com/mobile/reservation/tracking/linkView?InvNo=<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } else if(pro.getParselCompany()=="우체국택배") { %>	
									<p><a href="http://service.epost.go.kr/trace.RetrieveRegiPrclDeliv.postal?sid1=<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } else if(pro.getParselCompany()=="로젠택배") { %>	
									<p><a href="https://www.ilogen.com/m/personal/trace/<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } else if(pro.getParselCompany()=="한진택배") { %>	
									<p><a href="https://www.hanjin.co.kr/kor/CMS/DeliveryMgr/WaybillResult.do?mCode=MN038&schLang=KR&wblnumText2=<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } else if(pro.getParselCompany()=="CU 편의점택배") { %>	
									<p><a href="https://www.cupost.co.kr/postbox/delivery/localResult.cupost?invoice_no<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } else if(pro.getParselCompany()=="EMS 택배") { %>	
									<p><a href="http://service.epost.go.kr/trace.RetrieveEmsTrace.postal?ems_gubun=E&POST_CODE=<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } else if(pro.getParselCompany()=="경동택배") { %>	
									<p><a href="http://kdexp.com/basicNewDelivery.kd?barcode=<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } %>
								<% } %>	
							</td>
						</tr>
					</tbody>
				</table>
				<div class="btn-group">
					<input type="submit" name="submit-btn" class="btn btn-info" value="배송 정보 변경">
					<input type="reset" name="reset-btn" class="btn btn-info" value="취소">
					<a href="<%=request.getContextPath() %>/GetMemberSalesInfoCtrl" class="btn btn-danger">목록으로</a>
				</div>
			</form>
			<script>
			function postCheck(f){
				var code = [10,12,13,11,12,13,13,11];
				var com = ["CJ대한통운","롯데택배","우체국택배","로젠택배","한진택배","CU 편의점택배","EMS 택배","경동택배"];
				var baleCode = f.baleCode.value;
				baleCode = baleCode.trim();
				var parselCompany = f.parselCompany.value;
				for(var i=0;i<8;i++){
					if(parselCompany==com[i]){
						if(baleCode.length!=code[i]){
							alert("해당 택배사와 화물코드의 형식이 일치하지 않습니다.");
							f.baleCode.focus();
							return false;
						}
						//return false;
					}				
				}
			}
			</script>	
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