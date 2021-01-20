<%@ page import="user.User" %>
<%@ page language ="java" contentType ="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Thông tin | NL Accessories</title>
	<link rel="stylesheet" type="text/css" href="css/user_profile.css">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/prettyPhoto.css" rel="stylesheet">
	<link href="css/price-range.css" rel="stylesheet">
	<link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/user_profile.css">
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
	.shop-menu i{
		font-size: 20px;
		color: #48788f;
	}
	.mainmenu ul li a{
		font-weight: 500;
	}
	.mainmenu ul li a:focus{
		background-color: white;
	}
	.mainmenu ul li a:hover{
		color: #2b46dc;
	}
	.navbar-nav li ul.sub-menu li a:hover{
		color: #2b46dc;
		
	}
	.maxwidth{
		width: 102.5%;
	}
	.inheritWith{
		width: 100%;
	}
	.padding-left{
		padding-left: 0px;
	}
	.textAlign{
		text-align: center;
		border: 0.5px solid lightgray;
	}
	.Align{
		text-align: center;
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

		<section>
			<div style="height: 60px;">

			</div>
			<div class="container"> 
				<h1 class="text-center" style="color: #2B46DC;">Thông tin cá nhân</h1>
				<% User user = ((User)session.getAttribute("user")); %>
				<div class="container"> 
					<div class="row profile">        
						<div class="col-sm-3">          
							<div class="profile-sidebar">                          
								<div class="profile-userpic">                 <img src="images/home/profile_user.jpg" class="img-responsive" alt="Thông tin cá nhân">               
								</div>                                            
								<div class="profile-usertitle">                   
									<div class="profile-usertitle-name"> 
										<input type="text" name="usename" value="<%=user.getAccountName()%>" style="width: 50%" class="textAlign" >
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-9">
									<div>
										<form>
											<div class="row textcolor">
												<p>Thông tin liên lạc: </p>
											</div>
											<div class="row marginLeft">
												<div class="col-sm-2"><label for="mail" class="Align colorText">Email: </label>
												</div>
												<div class=" col-sm-10 "><input type="text" class="maxwidth" id="mail" name="email" value="<%=user.getEmail()%>">
												</div>
											</div >
											<div class="row">
												<div class="col-sm-2"><label for="sdt" class=" colorText">Số điện thoại: </label>
												</div>
												<div class=" col-sm-10">
													<input type="text" class=" maxwidth" id="sdt" name="phone" value="0911574460">
												</div>
											</div>
											<div class="row textcolor">
												<p>Thông tin chung: </p>
											</div>
											<div class="row marginLeft">
												<div class="col-sm-2 padding-left"><label for="gender" class="col-sm-2 inheritWith colorText">Giới tính: </label>
												</div>
												<div class="col-sm-10 ">
													<input type="text" class="maxwidth " name="gender"  id="gender" value="<%=user.getGender()%>">
												</div>
											</div>
											<div class="row">
												<div class="col-sm-2 padding-left"><label for="birth" class="col-sm-2 inheritWith colorText" >Ngày sinh: </label>
												</div>
												<div class="col-sm-10 ">
													<input type="date" class="maxwidth" id="dateField" name="birth" id="birth" value="<%=user.getBirthday().convertDateToSqlString()%>>">
												</div>
											</div>


											<div class="row">
												<label for="descript" style="font-size: 20px;
												color: lightseagreen; font-weight: normal">Mô tả: </label>
											</div>
											<div class="row">
												<textarea id="descript"><%=user.getDescription()%></textarea>
											</div>

											<div id="submit" class="row colorText">
												<input type="submit"  value="Xác nhận"> 
											</div>
										</form>
									</div>
								</div>  
							</div>
						</div> 
					</div>
					<div style="height: 150px;">

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
			<script type="text/javascript">
				// document.getElementById("dateField").defaultValue = "2014-02-09";
			</script>
			</html>