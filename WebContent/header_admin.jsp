<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%
	String sid = (String) session.getAttribute("sid");
	String sname = (String) session.getAttribute("sname");
%>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
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
                            <!-- 일반 회원 로그인 시 -->
                            <% if(sid!=null) { %>
                                <span class="nav-link"><%=sname %>님</span>
                                <a href="<%=request.getContextPath() %>/LogOutCtrl">로그아웃</a>
                                <a href="<%=request.getContextPath() %>/GetCustomInfoCtrl">회원정보</a>
                                <!--관리자 로그인 시-->
                            <% if(sid.equals("admin")) { %>
                                <a href="<%=request.getContextPath() %>/admin/index.jsp">관리자 페이지</a>
                                <%} else {%>

                                <%}
                            
                            }else{%>
                            <!-- 비로그인상태 -->
                                <a href="<%=request.getContextPath() %>/custom/login.jsp">로그인</a>
                                <a href="<%=request.getContextPath() %>/custom/membership.jsp">회원가입</a>
                                <%} %>
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
                        <a href="<%=request.getContextPath() %>/index.jsp"><img src="<%=request.getContextPath() %>/img1/header/logo.png" alt=""></a>
                    </div>
                </div>
                <%-- <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="#" class="search-switch"><img src="<%=request.getContextPath() %>/img1/header/icon_search_black.png" alt=""></a>
                        <a href="cart.html"><img src="<%=request.getContextPath() %>/img1/header/icon_cart_black.png" alt=""> <span></span></a>
                    </div>
                </div> --%>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->