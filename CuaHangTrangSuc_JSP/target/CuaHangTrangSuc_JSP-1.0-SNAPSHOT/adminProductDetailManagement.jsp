<%@ page import="user.User" %><%
	User user = (User) session.getAttribute("user");
	if(user==null||!user.isAdmin()){
		response.sendRedirect("404.html");
		return;
	}
%>

<%@ page import="product.Product" %>
<%@ page import="java.util.Collection" %>
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
	<title>Chi tiết sản phẩm | Admin</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/prettyPhoto.css" rel="stylesheet">
	<link href="css/price-range.css" rel="stylesheet">
	<link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/productDetailManagement.css">
	<link rel="icon" href="images/logoFavicon.png" type="image/icon type">
	<style type="text/css">
		.product-information{
			border: 2px solid #c8c8c8;
		}
		.product-information .productinfomation > input{
			border: 1px solid #9E9E9E;
		}
		.mainmenu ul li a:focus{
			background-color: white;
		}
		.mainmenu ul li a:hover{
			color: #3650de;

		}
		.mainmenu ul li a{
			font-weight: 700;

		}
		.header-bottom{
			border-bottom: 0.5px solid #c8c8c8;
			border-top: 0.5px solid #c8c8c8;
		}
		.picLink{
			width: 100%;
			margin-bottom: 20px;
		}
	</style>
</head>
<body>

<jsp:include page="admin-heading.jsp"/>
	<!-- container!-->
	<section>
<!-- form -->
		<c:choose>
			<c:when test="${product==null}">
				<form action="insertProduct" method="post">
					<input type="text" value="insert" name="typeEdit" STYLE="display: none">
					<div class="container">
						<div class="row">
							<div class="col-sm-12 padding-right">
								<div class="product-details"><!--product-details-->
									<div class="col-sm-1"></div> <!-- empty !-->
									<div class="col-sm-4">
										<div class="view-product">
											<img src="" alt=""/>
										</div>
										<div id="similar-product" class="carousel slide" data-ride="carousel">

											<!-- Wrapper for slides -->
											<div class="carousel-inner">
												<div class="item active">
													<a href=""><img src="" alt=""></a>
													<a href=""><img src="" alt=""></a>
													<a href=""><img src="" alt=""></a>
												</div>
												<div class="item">
													<a href=""><img src="" alt=""></a>
													<a href=""><img src="" alt=""></a>
													<a href=""><img src="" alt=""></a>
												</div>
												<div class="item">
													<a href=""><img src="" alt=""></a>
													<a href=""><img src="" alt=""></a>
													<a href=""><img src="" alt=""></a>
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
										<div class="linkImages">
											<h3>Link ảnh</h3>
											<p>Ảnh 1</p>
											<input class="picLink" type="text" name="picture1" value="" placeholder="Nhập ảnh">
											<p>Ảnh 2</p>
											<input class="picLink" type="text" name="picture2" value="" placeholder="Nhập ảnh">
											<p>Ảnh 3</p>
											<input class="picLink" type="text" name="picture3" value="" placeholder="Nhập ảnh">
										</div>

									</div>

									<div class="col-sm-6">
										<div class="product-information" ><!--/product-information-->
											<div id="basicInfor" class="productinfomation">
												<h3>Thông tin cơ bản</h3>
												<p>Tên sản phẩm</p>
												<input type="text" name="productName" id="productName" value="" placeholder="Tên sản phẩm">
												<p>Mã sản phẩm</p>
												<input type="text" name="productId" id="productId" value="" placeholder="Mã sản phẩm">
												<p>Giá</p>
												<input type="number" name="productPrice" id="producPrice"  placeholder="Giá">
												<p>Số lượng</p>
												<input type="number" name="productNumber" id="productNumber"  placeholder="Số lượng">
											</div>
											<div class="productinfomation">
												<h3>Thông số</h3>
												<p>Thương hiệu</p>
												<input type="text" name="trademark"  value="" placeholder="Thương hiệu">
												<p>Giới tính</p>
												<select id="gender" name="gender">
													<option value="Tất cả">Tất cả</option>
													<option value="NỮ">Nữ</option>
													<option value="NAM">Nam</option>
												</select>
												<p>Loại</p>
												<select id="type" name="type">
													<option value="1">Nhẫn</option>
													<option value="3">Lắc và vòng tay</option>
													<option value="2">Bông tai</option>
													<option value="5">Dây chuyền</option>
													<option value="4">Đồng hồ</option>
												</select>
												<p>Đính kèm</p>
												<select name="attached" id="color" class="select">
													<option value="non">Không có đính kèm</option>
													<option value="diamon">Đính kim cương</option>
													<option value="gemStone">Đính đá quý</option>
													<option value="pearl">Đính ngọc trai</option>
													<option value="ecz">ECZ</option>
												</select>
												<p>Độ tuổi</p>
												<select name="ischild" id="age" class="select">
													<option value="yes">Trẻ em</option>
													<option value="no">Người lớn</option>
												</select>
											</div>
										</div><!--/product-information-->
									</div>
									<div class="col-sm-1"></div> <!-- empty !-->
								</div><!--/product-details-->


								<div class="row">
									<div class="descriptionProduct"><!--recommended_items-->
										<h2 class="title text-center">Mô tả sản phẩm</h2>
										<div class="col-sm-1"></div>
										<div class="col-sm-10">
											<textarea rows="5" name="productDescription" placeholder="Nhập mô tả"></textarea>
										</div>
										<div class="col-sm-1"></div>
									</div>
								</div><!--/recommended_items-->
								<!-- change detail information !-->

							</div>
						</div>
						<div class="row">
							<div class="changeDetail col-sm-12" >
								<button type="submit" class="btn">Thêm</button>
							</div>
						</div>
					</div>
				</form>
			</c:when>
			<c:otherwise>
				<form action="insertProduct" method="post">
					<input type="text" value="edit" name="typeEdit" STYLE="display: none">
					<div class="container">
						<div class="row">
							<div class="col-sm-12 padding-right">
								<div class="product-details"><!--product-details-->
									<div class="col-sm-1"></div> <!-- empty !-->
									<div class="col-sm-4">
										<div class="view-product">
											<img src="${product.getPicture1()}" alt=""/>
										</div>
										<div id="similar-product" class="carousel slide" data-ride="carousel">

											<!-- Wrapper for slides -->
											<div class="carousel-inner">
												<div class="item active">
													<a href=""><img src="${product.getPicture1()}" alt=""></a>
													<a href=""><img src="${product.getPicture2()}" alt=""></a>
													<a href=""><img src="${product.getPicture3()}" alt=""></a>
												</div>
												<div class="item">
													<a href=""><img src="${product.getPicture1()}" alt=""></a>
													<a href=""><img src="${product.getPicture2()}" alt=""></a>
													<a href=""><img src="${product.getPicture3()}" alt=""></a>
												</div>
												<div class="item">
													<a href=""><img src="${product.getPicture1()}" alt=""></a>
													<a href=""><img src="${product.getPicture2()}" alt=""></a>
													<a href=""><img src="${product.getPicture3()}" alt=""></a>
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
										<div class="linkImages">
											<h3>Link ảnh</h3>
											<p>Ảnh 1</p>
											<input class="picLink" type="text" name="picture1" value="${product.getPicture1()}">
											<p>Ảnh 2</p>
											<input class="picLink" type="text" name="picture2" value="${product.getPicture2()}">
											<p>Ảnh 3</p>
											<input class="picLink" type="text" name="picture3" value="${product.getPicture3()}">
										</div>

									</div>

									<div class="col-sm-6">
										<div class="product-information" ><!--/product-information-->
											<div id="basicInfor" class="productinfomation">
												<h3>Thông tin cơ bản</h3>
												<p>Tên sản phẩm</p>
												<input type="text" name="productName" id="productName" value="${product.getProduct_name()}">
												<p>Mã sản phẩm</p>
												<input type="text" name="productId" id="productId" value="${product.getId_product()}">
												<p>Giá</p>
												<input type="number" name="producPrice" id="productPrice" value="${product.getPrice()}">
												<p>Số lượng</p>
												<input type="number" name="productNumber" id="productNumber" value="${product.getQuantity()}">
											</div>
											<div class="productinfomation">
												<h3>Thông số</h3>
												<p>Thương hiệu</p>
												<input type="text" name="trademark"  value="${product.getTrademark()}">
												<p>Giới tính</p>
												<select id="gender" name="gender">
													<option value="Tất cả">Tất cả</option>
													<option value="NỮ">Nữ</option>
													<option value="NAM">Nam</option>
												</select>
												<p>Loại</p>
												<select id="type" name="type">
													<option value="1">Nhẫn</option>
													<option value="3">Lắc và vòng tay</option>
													<option value="2">Bông tai</option>
													<option value="5">Dây chuyền</option>
													<option value="4">Đồng hồ</option>
												</select>
												<p>Đính kèm</p>
												<select name="attached" id="color" class="select">
													<option value="non">Không có đính kèm</option>
													<option value="diamon">Đính kim cương</option>
													<option value="gemStone">Đính đá quý</option>
													<option value="pearl">Đính ngọc trai</option>
													<option value="ecz">ECZ</option>
												</select>
												<p>Độ tuổi</p>
												<select name="ischild" id="age" class="select">
													<option value="yes">Trẻ em</option>
													<option value="no">Người lớn</option>
												</select>
											</div>
										</div><!--/product-information-->
									</div>
									<div class="col-sm-1"></div> <!-- empty !-->
								</div><!--/product-details-->


								<div class="row">
									<div class="descriptionProduct"><!--recommended_items-->
										<h2 class="title text-center">Mô tả sản phẩm</h2>
										<div class="col-sm-1"></div>
										<div class="col-sm-10">
											<textarea rows="5" name="productDescription">${product.getDescription()}</textarea>
										</div>
										<div class="col-sm-1"></div>
									</div>
								</div><!--/recommended_items-->
								<!-- change detail information !-->

							</div>
						</div>
						<div class="row">
							<div class="changeDetail col-sm-12" >
								<button class="btn">Lưu thay đổi</button>
							</div>
						</div>
					</div>
				</form>
			</c:otherwise>
		</c:choose>

	</section>

</body>
</html>
