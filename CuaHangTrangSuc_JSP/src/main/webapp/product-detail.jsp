<%@ page import="product.Product" %>
<%@ page language ="java" contentType ="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.User" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalTime" %>
<%@ page import="entity.BillData" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Sản phẩm | NL Accessories</title>
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
	.textAlign{
		color: blue;
		text-align: center;
	}
	.border-bottom{
		border-bottom: 1.5px ridge #ccc;
		margin-bottom: 15px;
	}
	.tab-content div p{
		font-size: 16px;
	}

	/*rating  start*/
	*{
		margin: 0;
		padding: 0;
	}
	div.rate{
		padding-left: 0px;
		margin-left: 0px;
	}
	.rate {

		float: left;
		height: 46px;
		padding: 0 10px;
	}
	.rate:not(:checked) > input {
		position:absolute;
		top:-9999px;
	}
	.rate:not(:checked) > label {
		float:right;
		width:1em;
		overflow:hidden;
		white-space:nowrap;
		cursor:pointer;
		font-size:30px;
		color:#ccc;
	}
	.rate:not(:checked) > label:before {
		content: '★ ';
	}
	.rate > input:checked ~ label {
		color: #ffc700;    
	}
	.rate:not(:checked) > label:hover,
	.rate:not(:checked) > label:hover ~ label {
		color: #deb217;  
	}
	.rate > input:checked + label:hover,
	.rate > input:checked + label:hover ~ label,
	.rate > input:checked ~ label:hover,
	.rate > input:checked ~ label:hover ~ label,
	.rate > label:hover ~ input:checked ~ label {
		color: #c59b08;
	}
	.clip-star {
		background: gold;
		clip-path: polygon(50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%, 32% 57%, 2% 35%, 39% 35%);
		display: inline-block;
		height: 30px;
		width: 30px;
	}

</style>
<script type="text/javascript">

	function picture(){ 
		var pic = "images/product-details/nhan1.png"
		document.getElementById('pic').src = pic.replace("80x80", '345x380');

	}


</script>
</head><!--/head-->

<body>
<jsp:include page="heading.jsp" />


		<section>
			<div class="container">
				<div class="col-sm-9">
				</div>	
				<c:set var="product" value='${product}' />
				<c:set var="user" value='${sessionScope.user}'/>
				<%User user = (User)session.getAttribute("user");
					Product product = (Product) request.getAttribute("product");
					boolean activeComment = true;
					if(user==null|| !BillData.canComment(user, product)){
						activeComment = false;
					}
				%>
				<div class="col-sm-12 padding-right">
					<div class="product-details"><!--product-details-->
						<div class="col-sm-4">
							<div class="view-product">
								<img id = "pic" src="${product.getPicture1()}" alt="" />
							</div>
							<div id="similar-product" class="carousel slide" data-ride="carousel">

								<!-- Wrapper for slides -->
								<div class="carousel-inner">
									<div class="item active">
										<a href=""><img src="${product.getPicture1()}" style="width: 80px; height: 80px" alt=""></a>
										<a href=""><img id = "pic1" onclick="picture()" src="${product.getPicture2()}" style="width: 80px; height: 80px" alt=""></a>
										<a href=""><img id = "pic2" src="${product.getPicture3()}" style="width: 80px; height: 80px" alt=""></a>
									</div>
								</div>

								<!-- Controls -->
								<a class="left item-control" href="#similar-product" data-slide="prev">
									<i class="fa fa-angle-left"></i>
								</a>
								<a class="right item-control" href="#similar-product" data-slide="next">
									<i class="fa fa-angle-right"></i>
								</a>
							</div>

						</div>
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								<img src="images/product-details/new.jpg" class="newarrival" alt="" />
								<h2>${product.getProduct_name()}</h2>
								<p>MÃ: ${product.getId_product()} </p>
								<c:forEach begin="1" end="${product.getRate()}" varStatus="loop">
									<div class="clip-star"></div>
								</c:forEach>
								<div style="
								width: 40%;
								">
								<p style="font-size: 30px;
								color: #2B46DC;
								font-weight: bold;">${product.getStringPrice()}</p>
								<!-- <br> -->
								<!-- <div> -->
									<!-- </div> -->
									<!-- <label>Kích cỡ:</label>
										<input type="text" value="3" /> -->

										<button type="button" class="btn btn-fefault cart" style="width: max-content;">
											<a href="addCart?id=${product.getId_product()}"><i class="fa fa-shopping-cart"></i>
											Thêm vào giỏ
											</a>
										</button>
									</div>
									<br/>
									<p><b>Kho hàng:</b> Còn</p>
									<!-- <p><b>Tình trạng:</b> Mới</p> -->
									<p><b>Nhãn Hiệu:</b> ${product.getTrademark()}</p>
									<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
								</div><!--/product-information-->
							</div>
						</div><!--/product-details-->

						<div class="category-tab shop-details-tab"><!--category-tab-->
							<div class="col-sm-12">
								<ul class="nav nav-tabs">
									<li><a href="#details" data-toggle="tab">Các chi tiết</a></li>
									<li class="active"><a href="#reviews" data-toggle="tab">Bình luận (5)</a></li>
								</ul>
							</div>
							<div class="tab-content">
								<div class="tab-pane fade" id="details" >
									<div class="row textAlign" ><h3>Thông tin sản phẩm</h3></div>
									<div class="row textAlign"><h2 style="color: lightslategrey;
									margin-bottom: 25px;">${product.getProduct_name()}</h2></div>
									<div>${product.getDescription()}</div>
										<div class="row textAlign"><h3 style="margin: 25px;">Thông số</h3></div>

										<div class="row border-bottom">
											<div class="col-sm-6"><p>Thương hiệu:</p></div>
											<div class="col-sm-6"><p>${product.getTrademark()}</p></div>
										</div>
										<div class="row border-bottom">
											<div class="col-sm-6"><p>Loại:</p></div>
											<div class="col-sm-6">
													<c:if test="${product.isDiamond()}"><p>Kim cương</p></c:if>
													<c:if test="${product.isGemstone()}"><p>Đá quý</p></c:if>
													<c:if test="${product.isECZ()}"><p>Đá ECZ</p></c:if>
													<c:if test="${product.isPearl()}"><p>Ngọc trai</p></c:if>
													<c:if test="${product.isPlain()}"><p>Trơn</p></c:if>
											</div>
										</div>
										<div class="row ">
											<div class="col-sm-6"><p>Giới tính:</p></div>
											<div class="col-sm-6"><p>${product.getGender()}</p></div>
										</div>

									</div>

									<div class="tab-pane fade" id="companyprofile" >


									</div>

									<div class="tab-pane fade" id="tag" >
										<div class="col-sm-3">
											<div class="product-image-wrapper">

											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">

											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">

											</div>
										</div>
										<div class="col-sm-3">
											<div class="product-image-wrapper">

											</div>
										</div>
									</div>

									<div class="tab-pane fade active in" id="reviews" >
										<div class="col-sm-12">
											<%LocalDate currentDate = LocalDate.now(); %>
											<%LocalTime currentTime = LocalTime.now();%>
											<ul>
												<%if (user!=null){ %>
													<li><a href=""><i class="fa fa-user"></i><%=user.getAccountName()%></a></li>
												<% } %>
													<li><a href=""><i class="fa fa-clock-o"></i><%=currentTime.toString().substring(0, 5)%></a></li>
													<li><a href=""><i class="fa fa-calendar-o"></i><%=currentDate%></a></li>
											</ul>
											<p></p>
											<p><b>Viết bình luận</b></p>
										<% if(activeComment){ %>
											<form action="comment" method="get">
												<span>
													<input type="text" placeholder="Tên của bạn" name="name" value = "<%if (user!=null){ %><%=user.getAccountName()%><% } %>"/>
													<input type="email" placeholder="Địa chỉ email" name="email" value = "<%if (user!=null){%><%=user.getEmail()%><% } %>"/>

												</span>
												<textarea name="comment" ></textarea>
												<b style="position: relative;
												bottom: 17px;
												">Xếp hạng: </b> 
												<span style="display: inline-block;">
													<div class="rate">
														<input type="radio" id="star5" name="rate" value="5" />
														<label for="star5" title="text">5 stars</label>
														<input type="radio" id="star4" name="rate" value="4" />
														<label for="star4" title="text">4 stars</label>
														<input type="radio" id="star3" name="rate" value="3" />
														<label for="star3" title="text">3 stars</label>
														<input type="radio" id="star2" name="rate" value="2" />
														<label for="star2" title="text">2 stars</label>
														<input type="radio" id="star1" name="rate" value="1" />
														<label for="star1" title="text">1 star</label>
													</div>
												</span>
												<input name = "productID" type = "hidden"  value="${product.getId_product()}"/>
												<input name = "username" type = "hidden"  value="${user.getUsername()}"/>
												<button type="submit" class="btn btn-default pull-right">
													Gửi
												</button>
											</form>
										<%} else { %>
											<p>Bạn chưa mua sản phẩm này, không thể bình luận!</p>
										<%} %>
											<c:forEach items="${cmtList}" var="cmt">
											<div class="commentShow" style="height: 100px;border: 1px solid black;border-radius: 5px; margin-bottom: 15px">
												<div class="col-sm-4">
													<h5>${cmt.getName()} :</h5>
													<c:forEach begin="1" end="${cmt.getRate()}" varStatus="loop">
														<div class="clip-star"></div>
													</c:forEach>
												</div>
												<div class="col-sm-8">
													${cmt.getComment()}
												</div>
											</div>
											</c:forEach>
										</div>
									</div>

								</div>
							</div><!--/category-tab-->

							<div class="recommended_items"><!--recommended_items-->
								<h2 class="title text-center">Sản phẩm khác</h2>

								<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">	
											<div class="col-sm-4">
												<div class="product-image-wrapper">
													<div class="single-products">
														<div class="productinfo text-center">
															<a href="product-details.html">
																<img src="images/home/recomendnhanChon.png" alt="" />
																<h2>20.924.000đ</h2>
																<p>Nhẫn Kim cương Vàng trắng 14K DD00W000225</p>
																<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</button>
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
																<img src="images/home/recomend2.png" alt="" />
																<h2>18.458.000đ</h2>
																<p>Nhẫn Kim cương Vàng trắng 14K DD00W000229</p>
																<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</button>
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
																<img src="images/home/recomend3.png" alt="" />
																<h2>3.191.000đ</h2>
																<p>Nhẫn Vàng trắng 10K đính đá ECZ Swarovski XMXMW000093</p>
																<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</button>
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
																<img src="images/home/recomendnhanChon.png" alt="" />
																<h2>$20.924.000đ</h2>
																<p>Nhẫn Kim cương Vàng trắng 14K DD00W000225</p>
																<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</button>
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
																<img src="images/home/recomend2.png" alt="" />
																<h2>18.458.000đ</h2>
																<p>Nhẫn Kim cương Vàng trắng 14K DD00W000229</p>
																<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</button>
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
																<img src="images/home/recomend3.png" alt="" />
																<h2>3.191.000đ</h2>
																<p>Nhẫn Vàng trắng 10K đính đá ECZ Swarovski XMXMW000093</p>
																<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</button>
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

			<!-- footer khoi chinh -->

    <jsp:include page="footer.jsp" />



			<script src="js/jquery.js"></script>
			<script src="js/bootstrap.min.js"></script>
			<script src="js/jquery.scrollUp.min.js"></script>
			<script src="js/price-range.js"></script>
			<script src="js/jquery.prettyPhoto.js"></script>
			<script src="js/main.js"></script>
		</body>
		</html>