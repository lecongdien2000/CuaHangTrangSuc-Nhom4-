<%@ page import="user.User" %>
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
							<a href="index"><img src="images/home/logo.png" alt="" /></a>
						</div>
					</div>
					<div class="col-md-4 clearfix">
						<div class="shop-menu clearfix pull-right">
							<ul class="nav navbar-nav">
								<%
                                    User user = ((User)session.getAttribute("user"));
									String name = user!=null?user.getAccountName():"";
									if(user==null){
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
								<li class="dropdown"><a href="search?type=nhan&index=1">Nhẫn<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="search?type=nhan&attached=diamond&index=1">Đính kim cương</a></li>
										<li><a href="search?type=nhan&attached=gemStone&index=1">Đá quý</a></li>
										<li><a href="search?type=nhan&attached=ecz&index=1">Đính đá ECZ</a></li>
										<li><a href="search?type=nhan&attached=pearl&index=1">Đính ngọc trai</a></li>
										<li><a href="search?type=nhan&attached=non&index=1">Nhẫn trơn</a></li>
									</ul>
								</li> 
								<li class="dropdown"><a href="search?type=bongTai&index=1">Bông tai<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="search?type=bongTai&attached=diamond&index=1">Đính kim cương</a></li>
										<li><a href="search?type=bongTai&attached=gemStone&index=1">Đá quý</a></li>
										<li><a href="search?type=bongTai&attached=ecz&index=1">Đính đá ECZ</a></li>
										<li><a href="search?type=bongTai&attached=pearl&index=1">Đính ngọc trai</a></li>
										<li><a href="search?type=bongTai&attached=non&index=1">Bông tai trơn</a></li>
									</ul>
								</li> 
								<li class="dropdown"><a href="search?type=lac&index=1">Lắc & Vòng tay<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="search?type=lac&attached=diamond&index=1">Đính kim cương</a></li>
										<li><a href="search?type=lac&attached=gemStone&index=1">Đá quý</a></li>
										<li><a href="search?type=lac&attached=ecz&index=1">Đính đá ECZ</a></li>
										<li><a href="search?type=lac&attached=pearl&index=1">Đính ngọc trai</a></li>
										<li><a href="search?type=lac&attached=non&index=1">Lắc & Vòng tay trơn</a></li>
										<li><a href="search?stage=child&index=1">Dành cho trẻ em</a></li>
									</ul>
								</li> 
								<li class="dropdown"><a href="search?type=dongHo&index=1">Đồng hồ<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="search?type=dongHo&gender=nam&index=1">Nam</a></li>
										<li><a href="search?type=dongHo&gender=nu&index=1">Nữ</a></li>
									</ul>
								</li> 
								<li class="dropdown"><a href="search?type=dayChuyen&index=1">Dây chuyền	<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="search?type=dayChuyen&attached=diamond&index=1">Đính kim cương</a></li>
										<li><a href="search?type=dayChuyen&attached=gemStone&index=1">Đá quý</a></li>
										<li><a href="search?type=dayChuyen&attached=ecz&index=1">Đính đá ECZ</a></li>
										<li><a href="search?type=dayChuyen&attached=pearl&index=1">Đính ngọc trai</a></li>
										<li><a href="search?type=dayChuyen&attached=non&index=1">Dây chuyền trơn</a></li>
									</ul>
								</li>
								<li class="dropdown"><a href="contact-us.jsp">Liên hệ</a>
								</ul>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="search_box pull-right">
								<form action="search" method="get">
									<input name="keyword" type="text" placeholder="Tìm kiếm" />
									<input name = "index" type = "hidden"  value="1"/>
								</form>

							</div>
						</div>
					</div>
				</div>
			</div><!--/header-bottom-->
		</header><!--/header-->


			<script src="js/jquery.js"></script>
			<script src="js/bootstrap.min.js"></script>
			<script src="js/jquery.scrollUp.min.js"></script>
			<script src="js/price-range.js"></script>
			<script src="js/jquery.prettyPhoto.js"></script>
			<script src="js/main.js"></script>
		</body>
		</html>