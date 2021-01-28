<%@ page import="user.User" %><%
	User user = (User) session.getAttribute("user");
	if(user==null||!user.isAdmin()){
		response.sendRedirect("404.html");
		return;
	}
%>
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
	<title>Quản lý khách hàng | Admin</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/prettyPhoto.css" rel="stylesheet">
	<link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/style-ad-user-management.css">
	<link rel="icon" href="images/logoFavicon.png" type="image/icon type">
</head>
<body>

<jsp:include page="admin-heading.jsp"/>
	<div class="container">
		<div class="row search">
			<div class="col-sm-9"></div>
			<div class="col-sm-3 searchBox">
				<div class="contain">
                    <form action="loadUser" method="get">
					<input type="text" name="keyword" placeholder="Tìm kiếm">
					<button class="btn"><i class="fa fa-search" aria-hidden="true" ></i></button>
                    </form>
				</div>
			</div>
		</div>
		<div class="userContain row">
			<div class="headTitle ">
				<div class="col-sm-8">
					<div class="col-sm-3">
						<p>Mã khách hàng</p>
					</div>
					<div class="col-sm-4">
						<p>Tên khách hàng</p>
					</div>
					<div class="col-sm-5">
						<p>Email</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-7">
						<p>Số điện thoại</p>
					</div>
					<div class="col-sm-2">
						<p>Xóa</p>
					</div>
					<div class="col-sm-3">
						<p>Chi tiết</p>
					</div>
				</div>
			</div>
			<div class="table">
    <c:if test="${userList!= null}">
        <c:forEach items="${userList}" var="user">
			<div class="information">
				<div class="col-sm-8">
					<div class="col-sm-3">
						<p>${user.getUsername()}</p>
					</div>
					<div class="col-sm-4">
						<p>${user.getAccountName()}</p>
					</div>
					<div class="col-sm-5">
						<p>${user.getEmail()}</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-7">
						<p>0909999499</p>
					</div>
					<div class="col-sm-2" style="padding-left: 29px">
						<p style="padding-left: 5px;padding-right: 5px;"><a href="#" style="color: red;"><i class="fa fa-times" aria-hidden="true"></i></a></p>
					</div>
					<div class="col-sm-3" style="padding-left: 39px;">
						<p ><a href="loadUserProfile?userName=${user.getUsername()}"><i>Xem</i></a></p>
					</div>
				</div>
			</div>
        </c:forEach>
    </c:if>
			</div>
		</div>
	</div>
</body>
</html>