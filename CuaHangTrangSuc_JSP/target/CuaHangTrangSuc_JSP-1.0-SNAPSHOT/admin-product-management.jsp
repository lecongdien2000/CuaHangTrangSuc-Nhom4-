<%@ page language ="java" contentType ="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Quản lý sản phẩm | Admin</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/prettyPhoto.css" rel="stylesheet">
	<link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/style-ad-user-management.css">
	<link rel="icon" href="images/logoFavicon.png" type="image/icon type">
	<style type="text/css">
		.maxheight{
			height: 131px;
		}
		.marginTop{
			margin-top: 50px;
		}
		.marginLeft{
			margin-left: 20px;
		}
		.fontweight{
			font-weight: bold;
		}
		.money{
			color: blue;
			font-weight: bold;
		}
	</style>
</head>
<body>

	<!-- header !-->
	<header id="header" class="navbar-fixed-top"><!--header-->
		<!-- not have header top !-->
		<div class="header-middle "><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-md-8 clearfix">
						<div class="logo pull-left">
							<a href="index.html"><img src="images/home/logo.png" alt="" /></a>
						</div>
					</div>
					<div class="col-md-4 clearfix">
						<div class="shop-menu clearfix pull-right">
							<ul class="nav navbar-nav">
								<li><a href="Admin-Profile.html"><i class="fa fa-user"></i>Nguyễn Văn A</a></li>
								<li><a href="admin_login.html"><i class="fa fa-sign-out" ></i> Đăng xuất</a></li>
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
						<div class="mainmenu pull-left" >
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li class="dropdown"><a href="admin-user-management.html">Khách hàng</a>
								</li> 
								<li class="dropdown"><a href="admin-product-management.html">Sản phẩm</a>
								</li> 
								<li class="dropdown"><a href="admin-bill-management.html">Hóa đơn</a>
								</li> 
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	<div class="container">
		<div class="row search">
			<div class="col-sm-9">
				<button style="     padding: 10px 10px;
				position: absolute;
				top: 5px;
				color: #ffffff;
				border-radius: 5px;
				background: green;
				background: #9700bc;
				font-weight: 600;"><a href="admin-product-detail" style="text-decoration: none; color: white">Thêm sản phẩm</a></button>

			</div>
			<div class="col-sm-3 searchBox">
				<div class="contain"> 
					<input type="text" name="" placeholder="Tìm kiếm">
					<button class="btn"><i class="fa fa-search" aria-hidden="true" ></i></button>
				</div>
			</div>
		</div>
		<div class="userContain row">
			<div class="headTitle "style="text-align: left">
				<div class="col-sm-4">
					<div class="col-sm-4">
						<p>Mã sản phẩm</p>
					</div>
					<div class="col-sm-8">
						<p>Tên sản phẩm</p>
					</div>
					
				</div>
				<div class="col-sm-4">
					<div class="col-sm-6">
						<p>Giá</p>
					</div>
					<div class="col-sm-6">
						<p>Hình ảnh</p>
					</div>
				</div>
				<div class="col-sm-4">

					<div class="col-sm-4">
						<p>Số lượng</p>
					</div>
					<div class="col-sm-4">
						<p>Chi tiết</p>
					</div>
					<div class="col-sm-4">
						<p>Xóa</p>
					</div>
					
				</div>
			</div>

			<div class="table">
				<c:forEach items="${data}" var="product">
					<div class="information maxheight">
						<div class="col-sm-4 marginTop">
							<div class="col-sm-4 fontweight">
								<p>${product.getId_product()}</p>
							</div>
							<div class="col-sm-8 fontweight">
								<p>${product.getProduct_name()}</p>
							</div>

						</div>
						<div class="col-sm-4 money">
							<div class="col-sm-6 marginTop">
								<p>${product.getStringPrice()}</p>
							</div>
							<div class="col-sm-6">
								<img src="${product.getPicture1()}" width="125" height="125">
							</div>
						</div>
						<div class="col-sm-4 marginTop">

							<div class="col-sm-4 ">
								<p class="marginLeft">${product.getQuantity()}</p>
							</div>
							<div class="col-sm-4 ">
								<p ><a class="marginLeft" href="admin-product-detail?id=${product.getId_product()}">Xem</a></p>
							</div>
							<div class="col-sm-4">
								<p ><a href="#" style="color: red;"><i class="fa fa-times marginLeft" aria-hidden="true"></i></a></p>
							</div>

						</div>
					</div>

				</c:forEach>

				<!--copy!-->

				<!--copy!-->
			</div>
		</div>
	</div>
</body>
</html>