<%@ page import="product.Product" %>
<%@ page import="java.util.Collection" %>
<%@ page language ="java" contentType ="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Loại | NL Accessories</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="icon" href="images/logoFavicon.png" type="image/icon type">
    <style type="text/css">
    	select{
    		outline: none;

    	}
    	.user_info input, select, textarea {
    	color: #151516;
    	border: 1px solid #dfdfdf;
    }
    </style>
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="contact-us.html"><i class="fa fa-phone"></i> 1800 54 54 57</a></li>
								<li><a href="contact-us.html"><i class="fa fa-envelope"></i> nonglamdaquy@nonglam.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="contact-us.html" ><i class="fa fa-facebook"></i></a></li>
								<li><a href="contact-us.html"><i class="fa fa-twitter"></i></a></li>
								<li><a href="contact-us.html"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="contact-us.html"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="contact-us.html"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-md-4 clearfix">
						<div class="logo pull-left">
							<ul class="nav navbar-nav">
								<li><a href="contact-us.html" rel="nofollow"> <i class="fa fa-home"></i> <span class="text-with-divider">Cửa hàng</span> </a></li>
								<li><a href="contact-us.html"> <i class="fa fa-phone"></i> <span class="text-hotline">1800 54 54 57</span> </a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 clearfix">
						<div class="logo pull-left">
							<a href="index.html"><img src="images/home/logo.png" alt="" /></a>
						</div>
					</div>
					<div class="col-md-4 clearfix">
						<div class="shop-menu clearfix pull-right">
							<ul class="nav navbar-nav">
								<li><a href="login.html"><i class="fa fa-lock"></i></a></li>
								<li><a href="#"><i class="fa fa-sign-out"></i></a></li>
								<li><a href="user_profile.html"><i class="fa fa-user"></i></a></li>
								<li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
								<li><a href="user-bill-management.html"><i class="fa fa-file-text"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->

		<div class="header-bottom" id="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left" >
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li class="dropdown"><a href="shop.html">Nhẫn<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="shop.html">Đính kim cương</a></li>
										<li><a href="shop.html">Đá quý</a></li>
										<li><a href="shop.html">Đính đá ECZ</a></li>
										<li><a href="shop.html">Đính ngọc trai</a></li>
										<li><a href="shop.html">Nhẫn trơn</a></li>
									</ul>
								</li> 
								<li class="dropdown"><a href="shop.html">Bông tai<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="shop.html">Đính kim cương</a></li>
										<li><a href="shop.html">Đá quý</a></li>
										<li><a href="shop.html">Đính đá ECZ</a></li>
										<li><a href="shop.html">Đính ngọc trai</a></li>
										<li><a href="shop.html">Bông tai trơn</a></li>
									</ul>
								</li> 
								<li class="dropdown"><a href="shop.html">Lắc & Vòng tay<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="shop.html">Đính kim cương</a></li>
										<li><a href="shop.html">Đá quý</a></li>
										<li><a href="shop.html">Đính đá ECZ</a></li>
										<li><a href="shop.html">Đính ngọc trai</a></li>
										<li><a href="shop.html">Lắc & Vòng tay trơn</a></li>
										<li><a href="shop.html">Dành cho trẻ em</a></li>
									</ul>
								</li> 
								<li class="dropdown"><a href="shop.html">Đồng hồ<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="shop.html">Nam</a></li>
										<li><a href="shop.html">Nữ</a></li>
									</ul>
								</li> 
								<li class="dropdown"><a href="shop.html">Dây chuyền	<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="shop.html">Đính kim cương</a></li>
										<li><a href="shop.html">Đá quý</a></li>
										<li><a href="shop.html">Đính đá ECZ</a></li>
										<li><a href="shop.html">Đính ngọc trai</a></li>
										<li><a href="shop.html">Dây chuyền trơn</a></li>
									</ul>
								</li>
								<li class="dropdown"><a href="contact-us.html">Liên hệ</a> 
								</ul>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="search_box pull-right">
								<input type="text" placeholder="Tìm kiếm"/>
							</div>
						</div>
					</div>
				</div>
			</div><!--/header-bottom-->
		</header><!--/header-->

	<section id="advertisement">
		<div class="container">
			<img src="images/shop/advertisement.jpg" alt="" />
		</div>
	</section>
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Bộ lọc</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">Loại trang sức</h4>
								</div>
								<div id="typeDiv" >
									<div class="panel-body">
										<select name="type" id="type" class="select">
											<option value="tatCa">Tất cả</option>
											<option value="nhan">Nhẫn</option>
    										<option value="bongTai">Bông tai</option>
    										<option value="dayChuyen">Dây chuyền</option>
  										  	<option value="dongHo">Đồng hồ</option>
    										<option value="lac">Lắc và vòng tay</option>
  										</select>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">Đính kèm</h4>
								</div>
								<div id="stoneColor">
									<div class="panel-body">
										<select name="stoneColor" id="color" class="select">
											<option value="tatCa">Tất cả</option>
    										<option value="non">Không có đính kèm</option>
    										<option value="diamon">Đính kim cương</option>
  										  	<option value="gemStone">Đính đá quý</option>
    										<option value="pearl">Đính ngọc trai</option>
    										<option value="ecz">ECZ</option>
  										</select>
									</div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">Độ tuổi</h4>
								</div>
								<div id="goldAge" >
									<div class="panel-body">
										<select name="stage" id="age" class="select">
											<option value="tatCa">Tất cả</option>
    										<option value="do">Trẻ em</option>
    										<option value="den">Người lớn</option>
  										</select>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">Giới tính</h4>
								</div>
								<div id="sex" >
									<div class="panel-body">
										<select name="sex" id="sexSelect"  class="select">
											<option value="tatCa">Tất cả</option>
											<option value="nam">Nam</option>
											<option value="nu">Nữ</option>
										</select>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">Mức giá</h4>
								</div>
								<div class="price-range "><!--price-range-->
							<div class="well">
								 <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="6000000" data-slider-step="100000" data-slider-value="[0,6000000]" id="sl2" ><br />
								 <b>0đ</b> <b class="pull-right">6.000.000đ</b>
							</div>
						</div><!--/price-range-->
							</div>
							<div class="filter"><button class="btn"><h4>Lọc</h4></button></div>
						</div><!--/category-productsr-->
					
						
						
						<div class="shipping text-center"><!--shipping-->
							<img src="images/home/shipping.jpg" alt="" />
						</div><!--/shipping-->
						
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
<!-- Display key search -->
						<%String result = (String)request.getAttribute("key");%>
						<h2 class="title text-center"> <%="Kết quả cho " + result%></h2>
<!-- display results product-->


                                <c:forEach items="${data}" var="product">
                                    <div class="col-sm-4">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${product.getPicture1()}" alt="" />
                                                    <h2>${product.getStringPrice()}</h2>
                                                    <p>${product.getProduct_name()}</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>
                                                <div class="product-overlay">
                                                    <a href="product-details.html">
                                                        <div class="overlay-content">
                                                            <h2>${product.getStringPrice()}</h2>
                                                            <p>${product.getProduct_name()}</p>
                                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>





<!-- end display product-->
						<ul class="pagination">
							<li class="active"><a href="">1</a></li>
<%--							<c:if test="${(numresults/6)>=2}">--%>
<%--							<c:forEach var="count" begin="2" end="${numberresults/6}">--%>
<%--							<li><a href="">${count}</a></li>--%>
<%--							</c:forEach>--%>
<%--							</c:if>--%>
							<li><a href="">&raquo;</a></li>

						</ul>
					</div><!--features_items-->
				</div>
			</div>
		</div>
	</section>
	
	<footer id="footer"><!--Footer-->


				<div class="footer-widget">
					<div class="container">
						<div class="row">
							<div class="col-sm-8">
								<div class="single-widget">
									<h2>© 2017 Công Ty Cổ Phần Vàng Bạc Đá Quý Nông Lâm</h2>
									<ul class="nav nav-pills nav-stacked">
										<p>217 Quận Thủ Đức, TP. Hồ Chí Minh</p>
										<p>SĐT: 0988972381</p>
										<p>Email: nonglamdaquy@nonglam.com</p>	
									</ul>
								</div>
							</div>
							<div class="col-sm-3 col-sm-offset-1">
								<div class="single-widget">
									<h2>Nhận thông tin</h2>
									<form action="#" class="searchform">
										<input type="text" placeholder="Email của bạn" />
										<button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
										<p>Nhận thông tin mới nhất từ cửa hàng của chúng tôi!</p>
									</form>
								</div>
							</div>

						</div>
					</div>
				</div>

				<div class="footer-bottom">
					<div class="container">
						<div class="row">
						</div>
					</div>
				</div>

			</footer><!--/Footer-->
	

  
    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>