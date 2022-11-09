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
</head>

<body>
<%@ include file="../header.jsp" %>
    
<%
	Product vo = (Product) request.getAttribute("pro");
%>
    
<%
	List<Product> proList = (ArrayList<Product>) request.getAttribute("proList");
%>
<section class="shop spad" id="page1">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="shop__sidebar">
                        <div class="shop__sidebar__accordion">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseOne">티 제품</a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__categories">
                                                <ul class="nice-scroll">
                                                    <li><a href="./tea_food.html">티푸드</a></li>
                                                    <li><a href="./life_style.html">라이프 스타일</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="row">
		<!-- 상품 반복 -->
<% for(int i=0;i<proList.size();i++) {
		Product pro = proList.get(i);
	%>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="<%=request.getContextPath() %>/upload/<%=pro.getProPic() %>"></div>
                                <div class="product__item__text">
                                    <h6><%=pro.getProName() %></h6>
                                    <a href="<%=request.getContextPath() %>/GetProductDetailCtrl?proNo=<%=pro.getProNo() %>" class="add-cart">제품 상세 보기</a>
                                    <h5><strong style="color:red;"><%=pro.getProPrice() %>원</strong> (<del><%=pro.getOriPrice() %>)</del></h5>
                                </div>
                            </div>
                        </div>
                        <%} %>
		<!-- 상품 반복 -->
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="product__pagination">
                                <a class="active" href="#">1</a>
                            </div>
                        </div>
                    </div>
<% if(sid.equals("admin")) { %>
			<div class="btn-group">
				<a href="<%=request.getContextPath() %>/InsertProductCategoryCtrl" class="btn btn-dark">상품 등록</a>
			</div>
			<% } %>
                </div>
            </div>
        </div>
    </section>

<!-- Footer Section Begin -->
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