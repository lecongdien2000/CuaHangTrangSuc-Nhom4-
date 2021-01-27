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
	<jsp:include page="heading.jsp" />

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
	<!-- get key --><%String result = (String)request.getAttribute("key");%>
	<!-- form -->
                        <form method="get" action="search">
                            <c:if test="${!key.equals(\"null\")}">
							<input type="text" name="keyword" value="<%=result%>" style="display: none">
                            </c:if>
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
										<select name="attached" id="color" class="select">
											<option value="tatCa">Tất cả</option>
    										<option value="non">Không có đính kèm</option>
    										<option value="diamond">Đính kim cương</option>
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
											<option value="tatCa" >Tất cả</option>
    										<option value="child" >Trẻ em</option>
    										<option value="notchild">Người lớn</option>
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
										<select name="gender" id="sexSelect"  class="select">
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
								 <input name="priceRange" type="text" class="span2" value="0,50000000" data-slider-min="0" data-slider-max="50000000" data-slider-step="100000" data-slider-value="[0,50000000]" id="sl2" ><br />
								 <b>0đ</b> <b class="pull-right">50.000.000đ</b>
							</div>
                                <input type="text" name="index" value="1" style="display: none">
						</div><!--/price-range-->
							</div>
							<div class="filter"><button class="btn"><h4>Lọc</h4></button></div>
						</div><!--/category-productsr-->
						</form>
						
						
						<div class="shipping text-center"><!--shipping-->
							<img src="images/home/shipping.jpg" alt="" />
						</div><!--/shipping-->

					</div>

				</div>

				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
<!-- Display key search -->

                    <c:choose>
						<c:when test="${key.equals(\"null\")}" >
                            <h2 class="title text-center">Danh sách sản phẩm</h2>
                        </c:when>
                        <c:otherwise>
                            <h2 class="title text-center"> <%=result%></h2>
                        </c:otherwise>
                    </c:choose>
<!-- display results product-->
                    <div class="row">
						<c:if test="${data!=null}">
                                <c:forEach items="${data}" var="product">
                                    <div class="col-sm-4">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${product.getPicture1()}" alt="" />
                                                    <h2>${product.getStringPrice()}</h2>
                                                    <p style=" height: 60px;">${product.getProduct_name()}</p>
                                                    <a href="addCart?id=${product.getId_product()}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>
                                                <div class="product-overlay">
                                                    <a href="loadProductsDetail?productID=${product.getId_product()}">
                                                        <div class="overlay-content">
                                                            <h2>${product.getStringPrice()}</h2>
                                                            <p style=" height: 60px;">${product.getProduct_name()}</p>
                                                            <a href="addCart?id=${product.getId_product()}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                    </div>

<!-- end display product-->
<%--                          <c:if test="${totalPages != null}"  >--%>
<%--                              <input type="text" value="${totalPages}">--%>
<%--                          </c:if>--%>
                       <div class="row">
						<ul class="pagination">
							<% int i;%>
							<% String keyword = (String)request.getAttribute("key");%>
							<% for(i = 1; i <= (int)request.getAttribute("totalPages"); i++) { %>
							<% if(i==(int)request.getAttribute("index")) { %>
							<li class="active"> <%} else {%> <li> <%}%>
<!--change link-->				<a href="${pageLink}<%=i%>"><%=i%></a></li>
							<%}%>
							<li><a href="">&raquo;</a></li>
						</ul>
                       </div>
						</c:if>
					</div><!--features_items-->
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="footer.jsp" />
	

  
    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>