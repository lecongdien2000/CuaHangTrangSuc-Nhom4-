<%@ page import="user.User" %><%
	User user = (User) session.getAttribute("user");
	if(user==null||!user.isAdmin()){
		response.sendRedirect("404.html");
		return;
	}
%>
<%@ page language ="java" contentType ="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Đăng nhập | Admin</title>
	<link rel="icon" href="images/logoFavicon.png" type="image/icon type">
	<style type="text/css">
		body{
			padding: 0px;
			margin: 0px;
			background-color: #99d9ea;
			font-family: Arial;
		}
		.container{
			width: 540px;
			height: 500px;
			margin: auto;
			margin-top: 50px;
			background-color: white;
			border-radius: 10px;
			border: 1px solid white;
		}
		.content{
			width: 345px;
    		margin: auto;
    		margin-top: 75px;
    		text-align: center;
    		color: #372656;
		}
		.inputTxt{
			width: 100%;
    		box-shadow: 1px 1px 14px 1px #dcdcdc;
			margin-bottom: 40px;
    		border: none;
    		border-radius: 20px;
    		height: 45px;
    		font-weight: 600;
    		color: #372656;
    		outline: none;
		}

		.submitBtn{
			width: 150px;
    		height: 55px;
    		background-color: #7b76f2;
    		color: white;
    		font-weight: 600;
    		border-radius: 30px;
    		border: none;
    		outline: none;
    		box-shadow: 1px 9px 13px 7px #dcdcdc;
		}

		p{
			margin: 0px;
		}
		h1{
			margin: 0px;
		}
		.icon{
			width: 30px;
    		height: 30px;
    		border-radius: 50%;
    		box-shadow: 1px 1px 14px 1px #dcdcdc;
		}
		.header{
			background-color: white;
			height: 52px;
		}
		.header .image{
			margin: auto;
			width: 169px;
		}
		.product-infomation{
			    border: 1px solid;
		}
		.product-information .productinfomation > input{
			    border: 1px solid #9E9E9E;
		}
	</style>

</head>
<body>

	<div class="header">
		<div class="image">	
			<img src="images\home\logo.png">
		</div>
	</div>
	<div class="container">
		<div class="content">
			<h1 style="margin-bottom: 45px;">Đăng nhập</h1>
			<form action="login" method="post">
				<input type="text" name="username" class="inputTxt" placeholder="Tài khoản">
				<input type="password" name="password" class="inputTxt" style="margin-bottom: 45px;" placeholder="Mật khẩu">
				<button type="submit" name="submit" class="submitBtn">Đăng nhập</button>
			</form>
		</div>
	</div>
</body>
</html>