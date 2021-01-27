<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="controller.Cart" %>
<%@ page import="java.util.Collection" %>
<%@ page import="product.Product" %>
<%@ page language ="java" contentType ="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Giỏ hàng | NL Accessories</title>
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
</style>
</head><!--/head-->

<body>
<jsp:include page="heading.jsp" />
		<section id="cart_items">
			<div class="container">
				<div class="table-responsive cart_info">
					<table class="table table-condensed">
						<thead>
							<tr class="cart_menu">
								<td class="image">Mục sản phẩm</td>
								<td class="description"></td>
								<td class="price">Giá</td>
								<td class="quantity">Số lượng</td>
								<td class="total">Tổng tiền</td>
								<td></td>
							</tr>
						</thead>
						<tbody>
						<% Cart cart = Cart.getCart(session);
							Collection<Product> data = cart.getdata();
							request.setAttribute("data", data);
							request.setAttribute("cart", cart);
						%>
                        <c:forEach items="${data}" var="d">

			                <tr>
								<td class="cart_product">
									<a href=""><img src="${d.getPicture1()}" width="110px" height="110px" alt=""></a>
								</td>

								<td class="cart_description">
									<h4><a href="loadProductsDetail?productID=${d.getId_product()}">${d.getProduct_name()}</a></h4>
									<p>MÃ: ${d.getId_product()}</p>
								</td>
								<td class="cart_price">
									<p>${d.getStringPrice()}</p>
								</td>
								<td class="cart_quantity">
									<div class="cart_quantity_button">
										<a class="cart_quantity_up" href="increAnddreQuan?delta=1&&id_product=${d.getId_product()}&&bool=false"> + </a>
										<input class="cart_quantity_input" type="text" name="quantity" value="${cart.getQuantity(d)}" autocomplete="off" size="2" disabled>
										<a class="cart_quantity_down" href="increAnddreQuan?delta=1&&id_product=${d.getId_product()}&&bool=true"> - </a>
									</div>
								</td>
								<td class="cart_total">
									<p class="cart_total_price">${cart.totalStringPriceProduct(d)}</p>
								</td>
								<td class="cart_delete">
									<a class="cart_quantity_delete" href="removeProductCart?id_product=${d.getId_product()}"><i class="fa fa-times"></i></a>
								</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</section> <!--/#cart_items-->

		<section id="do_action">
			<div class="container">
				<div class="heading">
					<h3>Chi tiết thanh toán</h3>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="total_area">
<%--							<% Cart cart1 = Cart.getCart(session);--%>
<%--								Collection<Product> data1 = cart.getdata();--%>
<%--								request.setAttribute("data", data);--%>
<%--								request.setAttribute("cart", cart);--%>
<%--							%>--%>
							<ul>
								<li>Tổng trong giỏ hàng <span>${cart.totalOfCart()}</span></li>
								<li>Thuế <span>0đ</span></li>
								<li>Phí vận chuyển <span>Miễn phí</span></li>
								<li><hr style="border-top: 1px solid black; margin-bottom: 0; margin-top: 0"></li>
								<li>Tổng Tiền <span>${cart.totalOfCart()}</span></li>
							</ul>

						</div>
						<div style="margin-left: 870px;">
							<a class="btn btn-default update" href="">Cập nhật</a>
							<a class="btn btn-default check_out" href="loadCart">Thanh toán</a>
						</div>
					</div>
				</div>
			</div>
		</section><!--/#do_action-->

<jsp:include page="footer.jsp" />



		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.scrollUp.min.js"></script>
		<script src="js/price-range.js"></script>
		<script src="js/jquery.prettyPhoto.js"></script>
		<script src="js/main.js"></script>
	</body>
	</html>