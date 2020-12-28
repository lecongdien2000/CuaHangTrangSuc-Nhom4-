<%@ page language ="java" contentType ="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Nguyễn Văn A | Admin</title>
  <link href="css/main.css" rel="stylesheet">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="css/style.css" />	
  <link rel="icon" href="images/logoFavicon.png" type="image/icon type">
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
                <li><a href="Admin-Profile.html"><i class="fa fa-user"></i>Nguyễn Văn A</a></li>
                <li><a href="admin_login.html"><i class="fa fa-sign-out" ></i> Đăng xuất</a></li>
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
                <li class="dropdown"><a href="admin-user-management.html">Khách hàng</a>
                </li> 
                <li class="dropdown"><a href="admin-product-management.html">Sản phẩm</a>
                </li> 
                <li class="dropdown"><a href="admin-bill-management.html">Hóa đơn</a>
                </li> 
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div><!--/header-bottom-->
  </header><!--/header-->
<div id="wrap" >
  <div class="space" style="height: 200px"></div>
  <div id="infoHeader">
    <h1>Thông tin tài khoản</h1>
  </div>
  <div id="bio" class="row">
  	<div class="col-sm-2"></div>
    <div id="about" class="col-sm-8">
      <div id="photo-bg" class="col-sm-4"> <img src="images/adminProfile/man.jpg" alt="" /> </div>
      <div class="col-sm-4 infor" style="border-left: 3px solid #ffffff;">
      	<h3>Thông tin cá nhân</h3>
      	<h5 style="color: #372656;">Tên: <span style="color:#888;">Nguyễn Văn A</span></h5>
      	<h5 style="color: #372656;">ID: <span style="color:#888;">939283038</span></h5>
      </div>
      <div id="contact-details" class="col-sm-4 infor">
      <h3>Thông tin liên lạc</h3>
      <h5 style="color: #372656;">Phone: <span style="color:#888;">01234 567 890</span>
      	<button  onclick="changePhoneFunction()">Sửa</button></h5>
      <div id="phoneNumber" style="display: none;">
      	<input type="text" name=""placeholder="Số điện thoại mới"><button>ok</button></div>
      <h5 style="color: #372656;">Email: <span style="color:#888;">janderson@email.com</span>
      	<button   onclick="changeMailFunction()">Sửa</button></h5>
      <div id="mail" style="display: none;" >
      	<input type="text" name="" placeholder="Địa chỉ mail mới"><button>ok</button>
      </div>
    </div>
    </div>
    <div class="col-sm-2"></div>
  </div>
  
</div>
<script type="text/javascript">
	function changePhoneFunction() {
  var x = document.getElementById("phoneNumber");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
function changeMailFunction() {
  var x = document.getElementById("mail");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script>
</body>
</html>