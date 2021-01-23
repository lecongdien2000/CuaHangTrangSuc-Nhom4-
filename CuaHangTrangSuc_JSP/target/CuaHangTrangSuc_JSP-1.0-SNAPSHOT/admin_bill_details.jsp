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
<html lang="en"><head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Chi tiết hóa đơn | Admin</title>
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

	.table-condensed img{
		width: 100px;
		height: 100px;
	}
	.payment-options img{
		width: 50px;
		height: 50px;
	}
	.box{
		float: right;

	}
	.box .card{
		/*width: 140px;*/
		min-width: 200px;
	}
	.box .card-title{
		background-color: blue;
		min-width: 90px;
		float: left;
		text-align: center;
		color: white;
		font-weight: 800;
		height: 40px;
		padding: 7px;
		margin-right: 10px;
		margin-top: 10px; 
	}
	.box .card p{
		padding-top: 20px;
		font-weight: 800;
	}
	.button-style{
		background: #2B46DC;
		border: medium none;
		border-radius: 0;
		padding: 7px 17px;
		color: white;
		font-weight: 600;
		border-radius: 4px;
		margin-right: 10px;
		margin-bottom: 50px;
	}
</style>
</head><!--/head-->

<body style="">
<jsp:include page="admin-heading.jsp"/>
<c:if test="${bill != null}"	>
<c:set var="bill" value="${bill}"></c:set>
	<section id="cart_items">
		<div class="space" style="height: 200px"></div>
		<div class="container">
			<div class="breadcrumbs">
				
			</div><!--/breadcrums-->

			<div class="step-one">
				
			</div>
			<!--/checkout-options-->

			<!--/register-req-->

			<div class="shopper-informations">
				
			</div>
			<div class="review-payment">
				<h3 style="float: left;">Trạng thái: ${bill.getState()}</h3>
				<div class="box">
					<div class="card">
						<div class="card-title">Mã HĐ</div>
						<p>${bill.getId_bill()}</p>
					</div>
				</div>
				<div class="box">
					<div class="card">
						<div class="card-title">Mã user</div>
						<p>${bill.getId_user()}</p>
					</div>
				</div>

				
			</div>

			<div class="table-responsive cart_info">
<%--	start bill details			--%>
				<table class="table table-condensed">
					<thead>
<%--	title --%>
						<tr class="cart_menu">
							<td class="image">Tên sản phẩm</td>
							<td class="description"></td>
							<td class="price">Giá</td>
							<td class="quantity">Số lượng</td>
							<td class="total">Tổng tiền</td>
							<td></td>
						</tr>
<%--	end title				--%>
					</thead>
					<tbody>
<%--	load products				--%>
					<c:set var="products" value="${bill.getBill_detail().keySet()}"></c:set>
					<c:if test="${products!=null}">
						<c:forEach items="${products}" var="product">
						<tr>
							<td class="cart_product">
								<a href=""><img src="${product.getPicture1()}" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href="">${product.getProduct_name() }</a></h4>
								<p>Mã: ${product.getId_product()}</p>
							</td>
							<td class="cart_price">
								<p>${product.getStringPrice()}</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<p>${bill.getBill_detail().get(product)}</p>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">${product.getStringPriceHasQuantities(bill.getBill_detail().get(product))}</p>
							</td>
							<td class="cart_delete">
								
							</td>
						</tr>
						</c:forEach>
					</c:if>
<%--end load products--%>

						<tr>
							<td colspan="3">&nbsp;</td>
							<td colspan="3">
							</td>
						</tr>
					</tbody>
				</table>
<%--	end bill details			--%>
			</div>
<%--	start bill infor		--%>
			<div class="info">
				<h3>Thông tin</h3>
				<table class=" table-condensed total-result" cellspacing="0" cellpadding="0">
					<tbody><tr>
						<td><b>Họ và tên:</b></td>
						<td>${bill.getFull_name()}</td>
					</tr>
					<tr>
						<td><b>Địa chỉ:</b></td>
						<td>${bill.getAddress()}</td>
					</tr>
					<tr class="shipping-cost">
						<td><b>Sđt:</b></td>
						<td>${bill.getPhone_number()}</td>
					</tr>
					<tr>
						<td><b><h3>Tổng:</h3></b></td>
						<td><span><h1 style="color: blue;">${bill.toStringPrice()}</h1></span></td>
					</tr>
				</tbody></table>
			</div>
<%--	end bill infor		--%>
			<div class="buttons" style="float: right;">
<%--	start add button			--%>
				<c:if test="${ bill.getState().equals(\"Chờ xác nhận\")}">
				<a href="loadBillDetails?idBill=${bill.getId_bill()}&action=confirm"><button class="button-style" style="float: left;">Xác nhận</button></a>
				<a href="loadBillDetails?idBill=${bill.getId_bill()}&action=cancel"><button class="button-style" style="background-color: red; color: yellow;">Hủy hóa đơn</button></a>
				</c:if>
<%--	end add button			--%>
			</div>
		</div>
	</section> <!--/#cart_items-->
</c:if>
	

	
	


	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/main.js"></script>

	<a id="scrollUp" href="#top" style="position: fixed; z-index: 2147483647; display: none;"><i class="fa fa-angle-up"></i></a><a id="scrollUp" href="#top" style="position: fixed; z-index: 2147483647; display: none;"><i class="fa fa-angle-up"></i></a></body></html>