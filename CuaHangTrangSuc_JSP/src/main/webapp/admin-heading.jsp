<%@ page import="user.User" %><%
  User user = (User) session.getAttribute("user");
  if(user==null||!user.isAdmin()){
    response.sendRedirect("404.html");
    return;
  }
%>

<%@ page language ="java" contentType ="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title><%=user.getAccountName()%> | Admin</title>
<%--  <link href="css/main.css" rel="stylesheet">--%>
<%--	<link href="css/bootstrap.min.css" rel="stylesheet">--%>
<%--	<link href="css/font-awesome.min.css" rel="stylesheet">--%>
<%--	<link type="text/css" rel="stylesheet" href="css/style.css" />	--%>
<%--  <link rel="icon" href="images/logoFavicon.png" type="image/icon type">--%>
</head>
<body>
    <!-- header !-->
  <header id="header" class="navbar-fixed-top"><!--header-->
    <!-- not have header top !-->
    <div class="header-middle"><!--header-middle-->
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
                <li><a href="Admin-Profile.jsp"><i class="fa fa-user"></i><%=user.getAccountName()%></a></li>
                <li><a href="logout"><i class="fa fa-sign-out" ></i> Đăng xuất</a></li>
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
                <li class="dropdown"><a href="admin-user-management.jsp">Khách hàng</a>
                </li> 
                <li class="dropdown"><a href="admin-product-management.jsp">Sản phẩm</a>
                </li> 
                <li class="dropdown"><a href="admin-bill-management.jsp">Hóa đơn</a>
                </li> 
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div><!--/header-bottom-->
  </header><!--/header-->
</body>
</html>