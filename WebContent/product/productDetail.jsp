<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<%
	String sid = (String) session.getAttribute("sid");
	String sname = (String) session.getAttribute("sname");
%>

<!DOCTYPE html>
<html lang="zxx">

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
    <meta property="og:description" content="오설록, 차와 제주가 선사하는 가치 있는 쉼"/>
    <meta property="og:url" content="https://www.osulloc.com/">



    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="./css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="./css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="./css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="./css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="./css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="./css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="./css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="./css/style.css" type="text/css">

    <link rel="stylesheet" href="./common.css">

    <style>
    .title { padding-top:36px; padding-bottom:20px; }
    </style>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__option">
            <div class="offcanvas__links">
                <a href="login.html">로그인</a>
                <a href="join.html">회원가입</a>
            </div>
        </div>
        <div class="offcanvas__nav__option">
            <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
            <a href="#"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__text">
            <p></p>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-7">
                        <div class="header__top__left">
                            <p></p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-5">
                        <div class="header__top__right">
                            <div class="header__top__links">
                                <a href="login.html">로그인</a>
                                <a href="join.html">회원가입</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="img1/header/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="./best.html">베스트</a>
                                <ul class="dropdown">
                                    <li><a href="./best.html">베스트</a></li>
                                    <li><a href="./best_weekly.html">위클리 베스트</a></li>
                                </ul>
                            </li>
                            <li><a href="./tea_food.html">티 제품</a>
                                <ul class="dropdown">
                                    <li><a href="./tea_food.html">티푸드</a></li>
                                    <li><a href="./life_style.html">라이프 스타일</a></li>
                                </ul>
                            </li>
                            <li><a href="./dada_subscribe.html">다다일상</a>
                                <ul class="dropdown">
                                    <li><a href="./dada_subscribe.html">다다일상 구독</a></li>
                                    <li><a href="./dada_recode.html">다다일상 기록</a></li>
                                </ul>
                            </li>
                            <li><a href="./boardList.html">고객센터</a>
                                <ul class="dropdown">
                                    <li><a href="./boardList.html">공지사항</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="#" class="search-switch"><img src="img1/header/icon_search_black.png" alt=""></a>
                        <a href="cart.html"><img src="img1/header/icon_cart_black.png" alt=""> <span></span></a>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->

    <body>
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
                <a href="<%=request.getContextPath() %>/GetProductWearingCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-dark">장바구니에 담기</a>
            	<% } %>
            	<% if(vo.getAmount()!=0) { %>
		<a href="<%=request.getContextPath() %>/GetSalesProductCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-primary">제품 구매</a>
		<% } %>
            </div>
        </div>



    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="./img1/footer/f_logo.png" alt=""></a>
                        </div>
                        <p>고객님의 안전거래를 위해 현금 거래에 대해 이니페이 에스크로서비스를 이용하실 수 있습니다.</p>
                        <a href="#"><img src="./img1/footer/escrow.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6></h6>
                        <ul>
                            <li><a href="#">회사소개</a></li>
                            <li><a href="#">서비스 이용약관</a></li>
                            <li><a href="#">개인정보 처리방침</a></li>
                            <li><a href="#">영상정보 처리방침</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6></h6>
                        <ul>
                            <li><a href="#">뷰티포인트</a></li>
                            <li><a href="#">임직원 할인</a></li>
                            <li><a href="#">사이트맵</a></li>
                            <li><a href="#">전자공고</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
                    <div class="footer__widget">
                        <h6></h6>
                        <div class="footer__newslatter">
                            <p>(주)오설록은 오설록 브랜드를 제외한 입점 브랜드에 대해서는 통신판매중개자 이며 통신판매의 당사자가 아닙니다.
                                따라서 입점판매자가 등록한 상품정보 및 거래에 대해 책임을 지지 않습니다.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="footer__copyright__text">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>㈜ 오설록 대표이사:서혁제 주소:서울특별시 용산구 한강대로 100, 14층(한강로2가) 사업자등록번호: 390-87-01499<br> 
                            통신판매업신고번호:2019-서울용산-1173호 호스팅제공자: ㈜오설록
                            <!-- <i class="hidden" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
                        </p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search Begin -->
<!--     <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div> -->
    <!-- Search End -->

    <!-- Js Plugins -->
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/jquery.nice-select.min.js"></script>
    <script src="./js/jquery.nicescroll.min.js"></script>
    <script src="./js/jquery.magnific-popup.min.js"></script>
    <script src="./js/jquery.countdown.min.js"></script>
    <script src="./js/jquery.slicknav.js"></script>
    <script src="./js/mixitup.min.js"></script>
    <script src="./js/owl.carousel.min.js"></script>
    <script src="./js/main.js"></script>
</body>

</html>