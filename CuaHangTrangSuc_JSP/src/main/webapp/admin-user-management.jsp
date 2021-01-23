<%@ page import="user.User" %><%
	User user = (User) session.getAttribute("user");
	if(user==null||!user.isAdmin()){
		response.sendRedirect("404.html");
		return;
	}
%>

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
					<input type="text" name="" placeholder="Tìm kiếm">
					<button class="btn"><i class="fa fa-search" aria-hidden="true" ></i></button>
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
			<div class="information">
				<div class="col-sm-8">
					<div class="col-sm-3">
						<p>U001215</p>
					</div>
					<div class="col-sm-4">
						<p>Nguyễn Văn Phú</p>
					</div>
					<div class="col-sm-5">
						<p>nguyenvanphu@gmail.com</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-7">
						<p>0123456789</p>
					</div>
					<div class="col-sm-2" style="padding-left: 29px">
						<p style="padding-left: 5px;padding-right: 5px;"><a href="#" style="color: red;"><i class="fa fa-times" aria-hidden="true"></a></i></p>
					</div>
					<div class="col-sm-3" style="padding-left: 39px;">
						<p ><a href="user_profile.html"><i>Xem</i></a></p>
					</div>
				</div>
			</div>
			<!--copy!-->
			<div class="information">
				<div class="col-sm-8">
					<div class="col-sm-3">
						<p>U541215</p>
					</div>
					<div class="col-sm-4">
						<p>Trần Thanh An</p>
					</div>
					<div class="col-sm-5">
						<p>TranThanhAn@gmail.com</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-7">
						<p>0123456789</p>
					</div>
					<div class="col-sm-2" style="padding-left: 29px">
						<p style="padding-left: 5px;padding-right: 5px;"><a href="#" style="color: red;"><i class="fa fa-times" aria-hidden="true"></a></i></p>
					</div>
					<div class="col-sm-3" style="padding-left: 39px;">
						<p ><a href="#"><i>Xem</i></a></p>
					</div>
				</div>
			</div>
			<div class="information">
				<div class="col-sm-8">
					<div class="col-sm-3">
						<p>U845145</p>
					</div>
					<div class="col-sm-4">
						<p>Nguyễn Ngọc Huyền Trang</p>
					</div>
					<div class="col-sm-5">
						<p>nnht@gmail.com</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-7">
						<p>0123456789</p>
					</div>
					<div class="col-sm-2" style="padding-left: 29px">
						<p style="padding-left: 5px;padding-right: 5px;"><a href="#" style="color: red;"><i class="fa fa-times" aria-hidden="true"></a></i></p>
					</div>
					<div class="col-sm-3" style="padding-left: 39px;">
						<p ><a href="#"><i>Xem</i></a></p>
					</div>
				</div>
			</div>
			<div class="information">
				<div class="col-sm-8">
					<div class="col-sm-3">
						<p>U541215</p>
					</div>
					<div class="col-sm-4">
						<p>Trần Thanh An</p>
					</div>
					<div class="col-sm-5">
						<p>TranThanhAn@gmail.com</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-7">
						<p>0123456789</p>
					</div>
					<div class="col-sm-2" style="padding-left: 29px">
						<p style="padding-left: 5px;padding-right: 5px;"><a href="#" style="color: red;"><i class="fa fa-times" aria-hidden="true"></a></i></p>
					</div>
					<div class="col-sm-3" style="padding-left: 39px;">
						<p ><a href="#"><i>Xem</i></a></p>
					</div>
				</div>
			</div>
			<div class="information">
				<div class="col-sm-8">
					<div class="col-sm-3">
						<p>U845145</p>
					</div>
					<div class="col-sm-4">
						<p>Nguyễn Ngọc Huyền Trang</p>
					</div>
					<div class="col-sm-5">
						<p>nnht@gmail.com</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-7">
						<p>0123456789</p>
					</div>
					<div class="col-sm-2" style="padding-left: 29px">
						<p style="padding-left: 5px;padding-right: 5px;"><a href="#" style="color: red;"><i class="fa fa-times" aria-hidden="true"></a></i></p>
					</div>
					<div class="col-sm-3" style="padding-left: 39px;">
						<p ><a href="#"><i>Xem</i></a></p>
					</div>
				</div>
			</div>
			<div class="information">
				<div class="col-sm-8">
					<div class="col-sm-3">
						<p>U541215</p>
					</div>
					<div class="col-sm-4">
						<p>Trần Thanh An</p>
					</div>
					<div class="col-sm-5">
						<p>TranThanhAn@gmail.com</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-7">
						<p>0123456789</p>
					</div>
					<div class="col-sm-2" style="padding-left: 29px">
						<p style="padding-left: 5px;padding-right: 5px;"><a href="#" style="color: red;"><i class="fa fa-times" aria-hidden="true"></a></i></p>
					</div>
					<div class="col-sm-3" style="padding-left: 39px;">
						<p ><a href="#"><i>Xem</i></a></p>
					</div>
				</div>
			</div>
			<div class="information">
				<div class="col-sm-8">
					<div class="col-sm-3">
						<p>U845145</p>
					</div>
					<div class="col-sm-4">
						<p>Nguyễn Ngọc Huyền Trang</p>
					</div>
					<div class="col-sm-5">
						<p>nnht@gmail.com</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-7">
						<p>0123456789</p>
					</div>
					<div class="col-sm-2" style="padding-left: 29px">
						<p style="padding-left: 5px;padding-right: 5px;"><a href="#" style="color: red;"><i class="fa fa-times" aria-hidden="true"></a></i></p>
					</div>
					<div class="col-sm-3" style="padding-left: 39px;">
						<p ><a href="#"><i>Xem</i></a></p>
					</div>
				</div>
			</div>
			<div class="information">
				<div class="col-sm-8">
					<div class="col-sm-3">
						<p>U541215</p>
					</div>
					<div class="col-sm-4">
						<p>Trần Thanh An</p>
					</div>
					<div class="col-sm-5">
						<p>TranThanhAn@gmail.com</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-7">
						<p>0123456789</p>
					</div>
					<div class="col-sm-2" style="padding-left: 29px">
						<p style="padding-left: 5px;padding-right: 5px;"><a href="#" style="color: red;"><i class="fa fa-times" aria-hidden="true"></a></i></p>
					</div>
					<div class="col-sm-3" style="padding-left: 39px;">
						<p ><a href="#"><i>Xem</i></a></p>
					</div>
				</div>
			</div>
			<div class="information">
				<div class="col-sm-8">
					<div class="col-sm-3">
						<p>U845145</p>
					</div>
					<div class="col-sm-4">
						<p>Nguyễn Ngọc Huyền Trang</p>
					</div>
					<div class="col-sm-5">
						<p>nnht@gmail.com</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-7">
						<p>0123456789</p>
					</div>
					<div class="col-sm-2" style="padding-left: 29px">
						<p style="padding-left: 5px;padding-right: 5px;"><a href="#" style="color: red;"><i class="fa fa-times" aria-hidden="true"></a></i></p>
					</div>
					<div class="col-sm-3" style="padding-left: 39px;">
						<p ><a href="#"><i>Xem</i></a></p>
					</div>
				</div>
			</div>
			<div class="information">
				<div class="col-sm-8">
					<div class="col-sm-3">
						<p>U541215</p>
					</div>
					<div class="col-sm-4">
						<p>Trần Thanh An</p>
					</div>
					<div class="col-sm-5">
						<p>TranThanhAn@gmail.com</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-7">
						<p>0123456789</p>
					</div>
					<div class="col-sm-2" style="padding-left: 29px">
						<p style="padding-left: 5px;padding-right: 5px;"><a href="#" style="color: red;"><i class="fa fa-times" aria-hidden="true"></a></i></p>
					</div>
					<div class="col-sm-3" style="padding-left: 39px;">
						<p ><a href="#"><i>Xem</i></a></p>
					</div>
				</div>
			</div>
			<div class="information">
				<div class="col-sm-8">
					<div class="col-sm-3">
						<p>U845145</p>
					</div>
					<div class="col-sm-4">
						<p>Nguyễn Ngọc Huyền Trang</p>
					</div>
					<div class="col-sm-5">
						<p>nnht@gmail.com</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-7">
						<p>0123456789</p>
					</div>
					<div class="col-sm-2" style="padding-left: 29px">
						<p style="padding-left: 5px;padding-right: 5px;"><a href="#" style="color: red;"><i class="fa fa-times" aria-hidden="true"></a></i></p>
					</div>
					<div class="col-sm-3" style="padding-left: 39px;">
						<p ><a href="#"><i>Xem</i></a></p>
					</div>
				</div>
			</div>
			<div class="information">
				<div class="col-sm-8">
					<div class="col-sm-3">
						<p>U541215</p>
					</div>
					<div class="col-sm-4">
						<p>Trần Thanh An</p>
					</div>
					<div class="col-sm-5">
						<p>TranThanhAn@gmail.com</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-7">
						<p>0123456789</p>
					</div>
					<div class="col-sm-2" style="padding-left: 29px">
						<p style="padding-left: 5px;padding-right: 5px;"><a href="#" style="color: red;"><i class="fa fa-times" aria-hidden="true"></a></i></p>
					</div>
					<div class="col-sm-3" style="padding-left: 39px;">
						<p ><a href="#"><i>Xem</i></a></p>
					</div>
				</div>
			</div>
			<div class="information">
				<div class="col-sm-8">
					<div class="col-sm-3">
						<p>U845145</p>
					</div>
					<div class="col-sm-4">
						<p>Nguyễn Ngọc Huyền Trang</p>
					</div>
					<div class="col-sm-5">
						<p>nnht@gmail.com</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-7">
						<p>0123456789</p>
					</div>
					<div class="col-sm-2" style="padding-left: 29px">
						<p style="padding-left: 5px;padding-right: 5px;"><a href="#" style="color: red;"><i class="fa fa-times" aria-hidden="true"></a></i></p>
					</div>
					<div class="col-sm-3" style="padding-left: 39px;">
						<p ><a href="#"><i>Xem</i></a></p>
					</div>
				</div>
			</div>
			<!--copy!-->
			</div>
		</div>
	</div>
</body>
</html>