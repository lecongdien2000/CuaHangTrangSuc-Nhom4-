<%@ page language ="java" contentType ="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Trang chủ | NL Accessories</title>
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
								<%
									String name = (String)session.getAttribute("uname");
									if(name==null){
								%>
								<li><a href="login.jsp"><i class="fa fa-lock"></i></a></li>
								<%
								} else{
								%>
								<li><a href="user_profile.jsp"><i><%=name%> </i></a></li>
								<li><a href="logout"><i class="fa fa-sign-out"></i></a></li>
								<li><a href="user_profile.jsp"><i class="fa fa-user"></i></a></li>
								<li><a href="user-bill-management.jsp"><i class="fa fa-file-text"></i></a></li>
								<%}%>
								<li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i></a></li>
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

		<section id="slider"><!--slider-->
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div id="slider-carousel" class="carousel slide" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
								<li data-target="#slider-carousel" data-slide-to="1"></li>
								<li data-target="#slider-carousel" data-slide-to="2"></li>
							</ol>

							<div class="carousel-inner">
								<div class="item active">
									<img src="images/home/girl1.jpg" class="girl img-responsive" alt="" />
								</div>
								<div class="item">
									<img src="images/home/girl2.jpg" class="girl img-responsive" alt="" />
								</div>
								<div class="item">
									<img src="images/home/girl3.jpg" class="girl img-responsive" alt="" />
								</div>

							</div>

							<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							</a>
							<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
								<i class="fa fa-angle-right"></i>
							</a>
						</div>

					</div>
				</div>
			</div>
		</section><!--/slider-->

		<section>
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<div class="left-sidebar">
							<h2>Phân loại</h2>
							<div class="panel-group category-products" id="accordian"><!--category-productsr-->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordian" href="#nhan">
												<span class="badge pull-right"><i class="fa fa-plus"></i></span>
												Nhẫn
											</a>
										</h4>
									</div>
									<div id="nhan" class="panel-collapse collapse">
										<div class="panel-body">
											<ul>
												<li><a href="#">Đính kim cương </a></li>
												<li><a href="#">Đá quý </a></li>
												<li><a href="#">Đính đá ECZ </a></li>
												<li><a href="#">Đính ngọc trai</a></li>
												<li><a href="#">Nhẫn trơn </a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordian" href="#bongtai">
												<span class="badge pull-right"><i class="fa fa-plus"></i></span>
												Bông Tai
											</a>
										</h4>
									</div>
									<div id="bongtai" class="panel-collapse collapse">
										<div class="panel-body">
											<ul>
												<li><a href="#">Đính kim cương </a></li>
												<li><a href="#">Đá quý </a></li>
												<li><a href="#">Đính đá ECZ </a></li>
												<li><a href="#">Đính ngọc trai</a></li>
												<li><a href="#">Bông tai trơn </a></li>
											</ul>
										</div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordian" href="#lacvongtay">
												<span class="badge pull-right"><i class="fa fa-plus"></i></span>
												Lắc & Vòng Tay
											</a>
										</h4>
									</div>
									<div id="lacvongtay" class="panel-collapse collapse">
										<div class="panel-body">
											<ul>
												<li><a href="#">Đính kim cương </a></li>
												<li><a href="#">Đá quý </a></li>
												<li><a href="#">Đính đá ECZ </a></li>
												<li><a href="#">Đính ngọc trai</a></li>
												<li><a href="#">Lắc & Vòng tay trơn </a></li>
												<li><a href="#">Dành cho trẻ em </a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordian" href="#dongho">
												<span class="badge pull-right"><i class="fa fa-plus"></i></span>
												Đồng hồ
											</a>
										</h4>
									</div>
									<div id="dongho" class="panel-collapse collapse">
										<div class="panel-body">
											<ul>
												<li><a href="#">Nam </a></li>
												<li><a href="#">Nữ </a></li>
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordian" href="#daychuyen">
													<span class="badge pull-right"><i class="fa fa-plus"></i></span>
													Dây chuyền
												</a>
											</h4>
										</div>
										<div id="daychuyen" class="panel-collapse collapse">
											<div class="panel-body">
												<ul>
													<li><a href="#">Đính kim cương </a></li>
													<li><a href="#">Đá quý </a></li>
													<li><a href="#">Đính đá ECZ </a></li>
													<li><a href="#">Đính ngọc trai</a></li>
													<li><a href="#">Lắc & Vòng tay trơn </a></li>
													<li><a href="#">Dây chuyền trơn</a></li>
												</ul>
											</div>
										</div>
									</div>

								</div><!--/category-products-->



								<div class="shipping text-center"><!--shipping-->
									<img src="images/home/shipping.jpg" alt="" />
								</div><!--/shipping-->

							</div>
						</div>

						<div class="col-sm-9 padding-right">
							<div class="features_items"><!--features_items-->
								<h2 class="title text-center">Bán chạy nhất</h2>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/product1.jpg" alt="" />
												<h2>655.000 đ</h2>
												<p>Nhẫn nam bạc đính đá PNJSilver XM00K000143</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
											<a href="product-details.html">
												<div class="product-overlay">
													<div class="overlay-content">
														<h2>655.000 đ</h2>
														<p>Nhẫn nam bạc đính đá PNJSilver XM00K000143</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
											</a>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/product2.jpg" alt="" />
												<h2>6.198.000 đ</h2>
												<p>Nhẫn Vàng trắng 14K đính đá Topaz PNJ TPXMW000002</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
											<a href="product-details.html">
											<div class="product-overlay">
												<div class="overlay-content">
													<h2>6.198.000 đ</h2>
													<p>Nhẫn Vàng trắng 14K đính đá Topaz PNJ TPXMW000002</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
												</div>
											</div>
										</a>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/product3.jpg" alt="" />
												<h2>1.391.000 đ</h2>
												<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
											<a href="product-details.html">
											<div class="product-overlay">
												<div class="overlay-content">
													<h2>1.391.000 đ</h2>
													<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
												</div>
											</div>
										</a>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/product3.jpg" alt="" />
												<h2>1.391.000 đ</h2>
												<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
											<a href="product-details.html">
											<div class="product-overlay">
												<div class="overlay-content">
													<h2>1.391.000 đ</h2>
													<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
												</div>
											</div>
										</a>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/product3.jpg" alt="" />
												<h2>1.391.000 đ</h2>
												<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
											<a href="product-details.html">
											<div class="product-overlay">
												<div class="overlay-content">
													<h2>1.391.000 đ</h2>
													<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
												</div>
											</div>
										</a>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/product3.jpg" alt="" />
												<h2>1.391.000 đ</h2>
												<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
											<a href="product-details.html">
											<div class="product-overlay">
												<div class="overlay-content">
													<h2>1.391.000 đ</h2>
													<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
												</div>
											</div>
										</a>
										</div>
									</div>
								</div>
							</div><!--features_items-->
							<div class="more"><a href="#">Xem thêm</a></div>
							<div class="features_items"><!--features_items-->
								<h2 class="title text-center">HOT TRONG TUẦN</h2>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/product1.jpg" alt="" />
												<h2>655.000 đ</h2>
												<p>Nhẫn nam bạc đính đá PNJSilver XM00K000143</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div><a href="product-details.html">
											<div class="product-overlay">
												<div class="overlay-content">
													<h2>655.000 đ</h2>
													<p>Nhẫn nam bạc đính đá PNJSilver XM00K000143</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
												</div>
											</div></a>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/product2.jpg" alt="" />
												<h2>6.198.000 đ</h2>
												<p>Nhẫn Vàng trắng 14K đính đá Topaz PNJ TPXMW000002</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
											<a href="product-details.html">
											<div class="product-overlay">
												<div class="overlay-content">
													<h2>6.198.000 đ</h2>
													<p>Nhẫn Vàng trắng 14K đính đá Topaz PNJ TPXMW000002</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
												</div>
											</div>
										</a>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/product3.jpg" alt="" />
												<h2>1.391.000 đ</h2>
												<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
											<a href="product-details.html">
											<div class="product-overlay">
												<div class="overlay-content">
													<h2>1.391.000 đ</h2>
													<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
												</div>
											</div>
										</a>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/product3.jpg" alt="" />
												<h2>1.391.000 đ</h2>
												<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
											<a href="product-details.html">
											<div class="product-overlay">
												<div class="overlay-content">
													<h2>1.391.000 đ</h2>
													<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
												</div>
											</div>
										</a>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/product3.jpg" alt="" />
												<h2>1.391.000 đ</h2>
												<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
											<a href="product-details.html">
											<div class="product-overlay">
												<div class="overlay-content">
													<h2>1.391.000 đ</h2>
													<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
												</div>
											</div>
										</a>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/product3.jpg" alt="" />
												<h2>1.391.000 đ</h2>
												<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
											<a href="product-details.html">
											<div class="product-overlay">
												<div class="overlay-content">
													<h2>1.391.000 đ</h2>
													<p>Nhẫn cưới Vàng trắng 10K PNJ 0000W000041</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
												</div>
											</div>
										</a>
										</div>
									</div>
								</div>
							</div>
							<div class="more"><a href="#">Xem thêm</a></div>
							<div class="category-tab"><!--category-tab-->
								<div class="col-sm-12">
									<ul class="nav nav-tabs">
										<li class="active"><a href="#tshirt" data-toggle="tab">Nhẫn</a></li>
										<li><a href="#blazers" data-toggle="tab">Bông tai</a></li>
										<li><a href="#sunglass" data-toggle="tab">Lắc & Vòng tay</a></li>
										<li><a href="#kids" data-toggle="tab">Đồng hồ</a></li>
										<li><a href="#poloshirt" data-toggle="tab">Dây chuyền</a></li>
									</ul>
								</div>
								<div class="tab-content">
									<div class="tab-pane fade active in" id="tshirt" >
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery1.jpg" alt="" />
														<h2>3.941.000 đ</h2>
														<p>Nhẫn cưới Kim cương Vàng trắng 14K PNJ Chung Đôi DD00W000480</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</a>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery2.jpg" alt="" />
														<h2>4.312.000 đ</h2>
														<p>Nhẫn cưới nam Kim cương Vàng trắng 14K PNJ Chung Đôi DD00W000360</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</a>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery3.jpg" alt="" />
														<h2>4.544.000 đ</h2>
														<p>Nhẫn cưới nam Kim cương Vàng trắng 14K PNJ Chung Đôi DD00W000374</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</a>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery4.jpg" alt="" />
														<h2>4.648.000 đ</h2>
														<p>Nhẫn cưới Kim cương Vàng trắng 14K PNJ Chung Đôi DD00W000477</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</a>
													</div>

												</div>
											</div>
										</div>
									</div>

									<div class="tab-pane fade" id="blazers" >
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery4.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery3.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery2.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery1.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
									</div>

									<div class="tab-pane fade" id="sunglass" >
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery3.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery4.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery1.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery2.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
									</div>

									<div class="tab-pane fade" id="kids" >
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery1.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery2.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery3.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery4.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
									</div>

									<div class="tab-pane fade" id="poloshirt" >
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery2.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery4.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery3.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="images/home/gallery1.jpg" alt="" />
														<h2>$56</h2>
														<p>Easy Polo Black Edition</p>
														<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div><!--/category-tab-->

							<div class="recommended_items"><!--recommended_items-->
								<h2 class="title text-center">Đề xuất</h2>

								<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">	
											<div class="col-sm-4">
												<div class="product-image-wrapper">
													<div class="single-products">
														<div class="productinfo text-center">
															<a href="product-details.html">
															<img src="images/home/recommend1.jpg" alt="" />
															<h2>5.687.000 đ</h2>
															<p>Bông tai Kim cương Vàng trắng 14K PNJ DD00W000392</p>
															<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
														</a>
														</div>

													</div>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="product-image-wrapper">
													<div class="single-products">
														<div class="productinfo text-center">
															<a href="product-details.html">
															<img src="images/home/recommend2.jpg" alt="" />
															<h2>13.600.000 đ</h2>
															<p>Bông tai Kim cương Vàng trắng 14K PNJ DD00W000200</p>
															<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
														</a>
														</div>

													</div>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="product-image-wrapper">
													<div class="single-products">
														<div class="productinfo text-center">
															<a href="product-details.html">
															<img src="images/home/recommend3.jpg" alt="" />
															<h2>15.943.000 đ</h2>
															<p>Bông tai Kim cương Vàng trắng 14K PNJ First Diamond DDDDW000672</p>
															<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
														</a>
														</div>

													</div>
												</div>
											</div>
										</div>
										<div class="item">	
											<div class="col-sm-4">
												<div class="product-image-wrapper">
													<div class="single-products">
														<div class="productinfo text-center">
															<a href="product-details.html">
															<img src="images/home/recommend1.jpg" alt="" />
															<h2>$56</h2>
															<p>Easy Polo Black Edition</p>
															<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
														</a>
														</div>

													</div>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="product-image-wrapper">
													<div class="single-products">
														<div class="productinfo text-center">
															<a href="product-details.html">
															<img src="images/home/recommend2.jpg" alt="" />
															<h2>$56</h2>
															<p>Easy Polo Black Edition</p>
															<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
														</a>
														</div>

													</div>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="product-image-wrapper">
													<div class="single-products">
														<div class="productinfo text-center">
															<a href="product-details.html">
															<img src="images/home/recommend3.jpg" alt="" />
															<h2>$56</h2>
															<p>Easy Polo Black Edition</p>
															<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
														</a>
														</div>

													</div>
												</div>
											</div>
										</div>
									</div>
									<a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
										<i class="fa fa-angle-left"></i>
									</a>
									<a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
										<i class="fa fa-angle-right"></i>
									</a>			
								</div>
							</div><!--/recommended_items-->

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
			<script src="js/bootstrap.min.js"></script>
			<script src="js/jquery.scrollUp.min.js"></script>
			<script src="js/price-range.js"></script>
			<script src="js/jquery.prettyPhoto.js"></script>
			<script src="js/main.js"></script>
		</body>
		</html>