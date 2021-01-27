<%@ page language ="java" contentType ="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Đăng nhập | NL Accessories</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/loginStyle.css">
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
    	#form{
    		margin-top: 100px;
    		margin-bottom: 250px;
    	}
    </style>
</head><!--/head-->

<body>
<jsp:include page="heading.jsp" />

	
	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Đăng nhập</h2>
						<form name = "loginForm" action="login" method = "post" onsubmit="return validateLoginForm()">
							<input type="text" placeholder="Tên tài khoản" name = "username"/>
							<input type="password" placeholder="Mật khẩu" name = "password"/>
							<span>
								<input type="checkbox" class="checkbox"> 
								Lưu đăng nhập
							</span>
							<a href="password-reset.jsp">  Quên mật khẩu?</a>
							<button type="submit" class="btn btn-default">Đăng nhập</button>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">Hoặc</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>Đăng ký tài khoản mới</h2>
						<form action="register" method="post" name="registerForm" onsubmit="return validateRegisterForm()">
							<input type="text" placeholder="Tên tài khoản" name="username"/>
							<input type="email" placeholder="Email" name="email"/>
							<input type="password" placeholder="Mật khẩu" name="password"/>
							<input type="password" placeholder="Xác nhận mật khẩu" name="password2"/>
							<button type="submit" class="btn btn-default">Đăng ký</button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->


<jsp:include page="footer.jsp" />

		<script>
		function validateLoginForm(){
			var name=document.loginForm.username.value;
			var password=document.loginForm.password.value;
			var letterNumber = /^[0-9a-zA-Z]+$/;
			if (name==null || name==""){
				alert("Tên tài khoản không được để trống!");
				return false;
			}else if (name.length > 12){
				alert("Tên tài khoản không được lớn hơn 12 ký tự!");
				return false;
			}if (!name.match(letterNumber)){
				alert("Tên tài khoản chỉ được phép chứa ký tự không dấu và số!");
				return false;
			}else if(password.length<6){
				alert("Mật khẩu phải có độ dài ít nhất 6 ký tự.");
				return false;
			}
		}
	</script>

<script>
	function validateRegisterForm(){
		var name=document.registerForm.username.value;
		var password=document.registerForm.password.value;
		var password2=document.registerForm.password2.value;
		var email=document.registerForm.email.value;
		var letterNumber = /^[0-9a-zA-Z]+$/;
		if (name==null || name==""){
			alert("Tên tài khoản không được để trống!");
			return false;
		}else if (name.length > 12){
			alert("Tên tài khoản không được lớn hơn 12 ký tự!");
			return false;
		}else if (name.length < 6){
			alert("Tên tài khoản phải chứa ít nhất 6 ký tự!");
			return false;
		}if (!name.match(letterNumber)){
			alert("Tên tài khoản chỉ được phép chứa ký tự không dấu và số!");
			return false;
		}else if(password.length<6){
			alert("Mật khẩu phải có độ dài ít nhất 6 ký tự.");
			return false;
		}else if(password != password2){
			alert("Mật khẩu không khớp.");
			return false;
		}else if(email==null || email==""){
			alert("Email không được để trống!");
			return false;
		}
	}
</script>
  
    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>