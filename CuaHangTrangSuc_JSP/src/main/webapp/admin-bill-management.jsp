<%@ page language ="java" contentType ="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
		<!DOCTYPE html>
		<html lang="en">
		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<meta name="description" content="">
			<meta name="author" content="">
			<title>Quản lý hóa đơn | Admin</title>
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
	<style type="text/css">
		.category-tab{
			margin-top: 50px;
		}
		.tab-content{
			padding-top: 40px;
		}
		.headTitle{
			background-color: blue;
			color: #ffffff;
			clear: both;
			min-height: 40px;
			margin-left: 15px;
			margin-right: 15px;
		}
		.headTitle p{
			margin-top: 10px;
		}
		.productList{
			margin-right: 15px;
		}
		.productInfor{
			border-bottom: 1px solid #a4a4a4;
			width: 100%;
			margin-left: 0px;
			min-height: 50px;

		}
		.productInfor p{
			padding-top: 15px;
		}
		.containImage{
			width: 90px;
			height: 100%;
		}
		.productList{
			height: 300px;
			overflow-y: scroll;
			margin-bottom: 30px;
		}

		.cancelBill .btn{
			background-color: #f41919;
			margin-bottom: 30px;
			color: #ffffff;

		}
		.cancelBill .btn:hover{
			background-color: #ff0000;;
		}
		.cancelBill .btn:active{
			background-color: #ae0000;;
		}

	</style>
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
			
			
			<section>
				<div class="container">
					<div class="space" style="height: 150px"></div>
					<div class="row">
						<div class="col-sm-12 padding-right">
							<div class="category-tab"><!--category-tab-->
								<div class="col-sm-12">
									<ul class="nav nav-tabs">
										<li class="active"><a href="#tong" data-toggle="tab">Tổng</a></li>
										<li><a href="#choXacNhan" data-toggle="tab">Chờ xác nhận</a></li>
										<li><a href="#choLayHang" data-toggle="tab">Đang giao</a></li>
										<li><a href="#daGiao" data-toggle="tab">Đã giao</a></li>
										<li><a href="#traHang" data-toggle="tab">Trả hàng</a></li>
										<li><a href="#daHuy" data-toggle="tab">Đã hủy</a></li>
									</ul>
								</div>
								<div class="tab-content">
									<div class="tab-pane fade active in " id="tong" >
										<div class="headTitle row">
											<div class="col-sm-8">
												<div class="col-sm-3">
													<p>Mã hóa đơn</p>
												</div>
												<div class="col-sm-4">
													<p>Mã khách hàng</p>
												</div>
												<div class="col-sm-5">
													<p>Tổng tiền</p>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="col-sm-6">
												</div>
												<div class="col-sm-2">
													<p>Xóa</p>
												</div>
												<div class="col-sm-4">
													<p>Chi tiết</p>
												</div>
											</div>
										</div>
										<div class="productList">
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											
										</div>
									</div>
									<div class="tab-pane fade" id="choXacNhan" >
										<div class="headTitle row">
											<div class="col-sm-8">
												<div class="col-sm-3">
													<p>Mã hóa đơn</p>
												</div>
												<div class="col-sm-4">
													<p>Mã khách hàng</p>
												</div>
												<div class="col-sm-5">
													<p>Tổng tiền</p>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="col-sm-6">
												</div>
												<div class="col-sm-2">
													<p>Xóa</p>
												</div>
												<div class="col-sm-4">
													<p>Chi tiết</p>
												</div>
											</div>
										</div>
										<div class="productList">
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											
										</div>
									</div>


									<div class="tab-pane fade" id="choLayHang" >
										<div class="headTitle row">
											<div class="col-sm-8">
												<div class="col-sm-3">
													<p>Mã hóa đơn</p>
												</div>
												<div class="col-sm-4">
													<p>Mã khách hàng</p>
												</div>
												<div class="col-sm-5">
													<p>Tổng tiền</p>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="col-sm-6">
												</div>
												<div class="col-sm-2">
													<p>Xóa</p>
												</div>
												<div class="col-sm-4">
													<p>Chi tiết</p>
												</div>
											</div>
										</div>
										<div class="productList">
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											
										</div>

									</div>
									<div class="tab-pane fade" id="daGiao" >
										<div class="headTitle row">
											<div class="col-sm-8">
												<div class="col-sm-3">
													<p>Mã hóa đơn</p>
												</div>
												<div class="col-sm-4">
													<p>Mã khách hàng</p>
												</div>
												<div class="col-sm-5">
													<p>Tổng tiền</p>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="col-sm-6">
												</div>
												<div class="col-sm-2">
													<p>Xóa</p>
												</div>
												<div class="col-sm-4">
													<p>Chi tiết</p>
												</div>
											</div>
										</div>
										<div class="productList">
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											
										</div>

									</div>	
									<div class="tab-pane fade" id="traHang" >
										<div class="headTitle row">
													<div class="col-sm-8">
														<div class="col-sm-3">
															<p>Mã hóa đơn</p>
														</div>
														<div class="col-sm-4">
															<p>Mã khách hàng</p>
														</div>
														<div class="col-sm-5">
															<p>Tổng tiền</p>
														</div>
													</div>
													<div class="col-sm-4">
														<div class="col-sm-6">
														</div>
														<div class="col-sm-2">
															<p>Xóa</p>
														</div>
														<div class="col-sm-4">
															<p>Chi tiết</p>
														</div>
													</div>
										</div>
										<div class="productList">
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>	
										</div><!-- end product inor!-->

									</div>
									<div class="tab-pane fade" id="daHuy" >
										<div class="headTitle row">
											<div class="col-sm-8">
												<div class="col-sm-3">
													<p>Mã hóa đơn</p>
												</div>
												<div class="col-sm-4">
													<p>Mã khách hàng</p>
												</div>
												<div class="col-sm-5">
													<p>Tổng tiền</p>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="col-sm-6">
												</div>
												<div class="col-sm-2">
													<p>Xóa</p>
												</div>
												<div class="col-sm-4">
													<p>Chi tiết</p>
												</div>
											</div>
										</div>
										<div class="productList">
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											<div class="row productInfor">
												<div class="col-sm-8">
													<div class="col-sm-3">
														<p class="index"><b>HD01</b></p>
													</div>
													<div class="col-sm-4">
														<p class="index"><b>US01</b></p>
													</div>
													<div class="col-sm-5">
														<p class="index" style="color:blue; font-weight: 700; font-size: 15px;">100.000đ</p>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="col-sm-7">
														<p class="index"></p>
													</div>
													<div class="col-sm-2">
														<p class="index"><i class="fa fa-times" aria-hidden="true" style="color: red"></i></p>
													</div>
													<div class="col-sm-3">
														<p class="index"><a href="admin_bill_details.html">Xem</a></p>
													</div>
												</div>
											</div>
											
										</div>

									</div>

								</div><!--tab content-->
									

															</div>	
														</div>
													</div>

												</div><!--/category-tab-->


											</div>
										

								</section>



								<script src="js/jquery.js"></script>
								<script src="js/bootstrap.min.js"></script>
								<script src="js/jquery.scrollUp.min.js"></script>
								<script src="js/price-range.js"></script>
								<script src="js/jquery.prettyPhoto.js"></script>
								<script src="js/main.js"></script>
							</body>
							</html>