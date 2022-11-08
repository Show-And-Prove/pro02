<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
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
            <a href="#" class="search-switch"><img src="./img/icon/search.png" alt=""></a>
            <a href="#"><img src="./img/icon/cart.png" alt=""> <span>0</span></a>
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
                        <a href="./index.html"><img src="./img1/header/logo.png" alt=""></a>
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
<%-- <%
	Product vo = (Product) request.getAttribute("pro");
%> --%>
                
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="" class="search-switch"><img src="./img1/header/icon_search_black.png" alt=""></a>
                        <a href="cart.html"><img src="./img1/header/icon_cart_black.png" alt=""> <span></span></a>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->
    
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
                    <div class="shop__product__option">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                            </div>
                        </div>
                    </div>
                    <div class="row">
<% for(int i=0;i<proList.size();i++) {
		Product pro = proList.get(i);
	%>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="<%=request.getContextPath() %>/upload/<%=pro.getProPic() %>">
                                </div>
                                <div class="product__item__text">
                                    <h6><%=pro.getProName() %></h6>
                                    <a href="<%=request.getContextPath() %>/GetProductDetailCtrl?proNo=<%=pro.getProNo() %>"class="add-cart">장바구니에 담기</a>
                                    <h5><%=pro.getProPrice() %>원</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
					}
                    %>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="product__pagination">
                                <a class="active" href="#">1</a>
                                <!-- <a href="#">2</a>
                                <a href="#">3</a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
                            <!-- <form action="#">
                                <input type="text" placeholder="Your email">
                                <button type="submit"><span class="icon_mail_alt"></span></button>
                            </form> -->
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
                            <!-- <i class="hidden" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        </p> -->
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
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