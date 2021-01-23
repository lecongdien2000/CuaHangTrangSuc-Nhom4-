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
<jsp:include page="heading.jsp" />

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
											</ul>
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

								<c:forEach items="${data}" var="product" begin="0" end="5">
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${product.getPicture1()}" alt="" />
												<h2>${product.getStringPrice()}</h2>
												<p>${product.getProduct_name()}</p>
												<a href="addCart?id=${product.getId_product()}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div>
											<a href="loadProductsDetail?productID=${product.getId_product()}">
												<div class="product-overlay">
													<div class="overlay-content">
														<h2>${product.getStringPrice()}</h2>
														<p>${product.getProduct_name()}</p>
														<a href="addCart?id=${product.getId_product()}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</div>
												</div>
											</a>
										</div>
									</div>
								</div>
								</c:forEach>
							</div><!--features_items-->
							<div class="more"><a href="#">Xem thêm</a></div>
							<div class="features_items"><!--features_items-->
								<h2 class="title text-center">HOT TRONG TUẦN</h2>
								<c:forEach items="${dataHot}" var="product" begin="6" end="11">
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${product.getPicture1()}" alt="" />
												<h2>${product.getStringPrice()}</h2>
												<p>${product.getProduct_name()}</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
											</div><a href="product-details.html">
											<div class="product-overlay">
												<div class="overlay-content">
													<h2>${product.getStringPrice()}</h2>
													<p>${product.getProduct_name()}</p>
													<a href="addCart?id=${product.getId_product()}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
												</div>
											</div></a>
										</div>
									</div>
								</div>
								</c:forEach>

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
                                        <c:forEach var="product" items="${ring}">
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="${product.getPicture1()}" alt="" />
														<h2>${product.getPrice()}</h2>
														<p>${product.getProduct_name()}</p>
														<a href="addCart?id=${product.getId_product()}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
													</a>
													</div>

												</div>
											</div>
										</div>
                                        </c:forEach>
									</div>

									<div class="tab-pane fade" id="blazers" >
                                        <c:forEach var="product" items="${bongtai}">
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
														<img src="${product.getPicture1()}" alt="" />
														<h2>${product.getPrice()}</h2>
														<p>${product.getProduct_name()}</p>
														<a href="addCart?id=${product.getId_product()}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
                                        </c:forEach>
									</div>

									<div class="tab-pane fade" id="sunglass" >
                                        <c:forEach var="product" items="${bongtai}">
										<div class="col-sm-3">
											<div class="product-image-wrapper">
												<div class="single-products">
													<div class="productinfo text-center">
														<a href="product-details.html">
                                                            <img src="${product.getPicture1()}" alt="" />
                                                            <h2>${product.getPrice()}</h2>
                                                            <p>${product.getProduct_name()}</p>
														<a href="addCart?id=${product.getId_product()}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</a>
													</div>

												</div>
											</div>
										</div>
                                        </c:forEach>
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
														<a href="addCart?id=${product.getId_product()}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
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
														<a href="addCart?id=${product.getId_product()}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
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
														<a href="addCart?id=${product.getId_product()}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
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

	<jsp:include page="footer.jsp" />


			<script src="js/jquery.js"></script>
			<script src="js/bootstrap.min.js"></script>
			<script src="js/jquery.scrollUp.min.js"></script>
			<script src="js/price-range.js"></script>
			<script src="js/jquery.prettyPhoto.js"></script>
			<script src="js/main.js"></script>
		</body>
		</html>