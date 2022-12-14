<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>ISMART STORE</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="<c:url value="/resources/assets/css/bootstrap/bootstrap-theme.min.css" />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/resources/assets/css/bootstrap/bootstrap.min.css" />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/resources/assets/reset.css" />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/resources/assets/css/carousel/owl.carousel.css" />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/resources/assets/css/carousel/owl.theme.css" />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/resources/assets/css/font-awesome/css/font-awesome.min.css" />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/resources/assets/style.css"/>" type="text/css"/>
        <link href="<c:url value="/resources/assets/responsive.css" />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/resources/assets/css/import/header.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/assets/css/import/fonts.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/assets/css/import/global.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/assets/css/import/footer.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/assets/css/import/home.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/assets/css/import/category_product.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/assets/css/import/blog.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/assets/css/import/detail_product.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/assets/css/import/detail_blog.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/assets/css/import/cart.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/assets/css/import/checkout.css"/>" rel="stylesheet">
        
        
        
        <script src="<c:url value="/resources/assets/js/jquery-2.2.4.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/assets/js/elevatezoom-master/jquery.elevatezoom.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/assets/js/bootstrap/bootstrap.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/assets/js/carousel/owl.carousel.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/assets/js/main.js"/>" type="text/javascript"></script>
    </head>

    <body>
        <div id="site">
            <div id="container">
                <div id="header-wp">
                    <div id="head-top" class="clearfix">
                        <div class="wp-inner">
                            <a href="" title="" id="payment-link" class="fl-left">H??nh th???c thanh to??n</a>
                            <div id="main-menu-wp" class="fl-right">
                                <ul id="main-menu" class="clearfix">
                                    <li>
                                        <a href="/i8-web/trang-chu" title="">Trang ch???</a>
                                    </li> 
                                    <li>
                                        <a href="/i8-web/danh-sach-san-pham" title="">S???n ph???m</a>
                                    </li>
                                    <li>
                                        <a href="/i8-web/blog" title="">Blog</a>
                                    </li>
                                    <li>
                                        <a href="/i8-web/chi-tiet-blog" title="">Gi???i thi???u</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div id="head-body" class="clearfix">
                        <div class="wp-inner">
                            <a href="/i8-web/trang-chu" title="" id="logo" class="fl-left"><img src="/i8-web/resources/assets/images/logo.png"/></a>
                            <div id="search-wp" class="fl-left">
                                <form method="POST" action="">
                                    <input type="text" name="s" id="s" placeholder="Nh???p t??? kh??a t??m ki???m t???i ????y!">
                                    <button type="submit" id="sm-s">T??m ki???m</button>
                                </form>
                            </div>
                            <div id="action-wp" class="fl-right">
                                <div id="advisory-wp" class="fl-left">
                                    <span class="title">T?? v???n</span>
                                    <span class="phone">0987.654.321</span>
                                </div>
                                <div id="btn-respon" class="fl-right"><i class="fa fa-bars" aria-hidden="true"></i></div>
                                <a href="/i8-web" title="gi??? h??ng" id="cart-respon-wp" class="fl-right">
                                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                    <span id="num">${ ITEMS}</span>
                                </a>
                                <div id="cart-wp" class="fl-right">
                                    <div id="btn-cart">
                                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                        <span id="num">${ ITEMS}</span>
                                    </div>
                                    <div id="dropdown">
                                    <p class="desc">C?? <span>${ ITEMS} s???n ph???m</span> trong gi??? h??ng</p>
                                    <c:forEach var="item" items="${ CART}">
                                        <ul class="list-cart">
                                            <li class="clearfix">
                                                <a href="" title="" class="thumb fl-left">
                                                    <img src="${item.image }" alt="">
                                                </a>
                                                <div class="info fl-right">
                                                    <a href="" title="" class="product-name">${ item.name}</a>
                                                    <p class="price">${ item.price}</p>
                                                    <p class="qty">S??? l?????ng: <span>${ item.quantity}</span></p>
                                                </div>
                                            </li>
                                        </ul>
                                   </c:forEach>  
                                        <div class="total-price clearfix">
                                            <p class="title fl-left">T???ng:</p>
                                            <p class="price fl-right">${TOTAL }</p>
                                        </div>
                                        <dic class="action-cart clearfix">
                                            <a href="/i8-web/gio-hang" title="Gi??? h??ng" class="view-cart fl-left">Gi??? h??ng</a>
                                            <a href="/i8-web/thanh-toan" title="Thanh to??n" class="checkout fl-right">Thanh to??n</a>
                                        </dic>                                    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>