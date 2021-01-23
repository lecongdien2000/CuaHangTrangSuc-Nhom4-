<%@ page language ="java" contentType ="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Liên hệ | NL Accessories</title>
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
	#contact-page .form-control:focus, #contact-page .form-control:hover {
		border-color: #2b46dc;
	}
</style>
</head><!--/head-->

<body>
<jsp:include page="heading.jsp" />

		<div id="contact-page" class="container">
			<div class="bg">
				<div class="row">    		
					<div class="col-sm-12">    			   			
						<h2 class="title text-center">Liên Hệ <strong>Chúng tôi</strong></h2>    			    				    				
						<div id="gmap" class="contact-map">
						</div>
					</div>			 		
				</div>    	
				<div class="row">  	
					<div class="col-sm-8">
						<div class="contact-form">
							<h2 class="title text-center">Liên hệ</h2>
							<div class="status alert alert-success" style="display: none"></div>
							<form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
								<div class="form-group col-md-6">
									<input  type="text" name="name" class="form-control" required="required" placeholder="Tên..">
								</div>
								<div class="form-group col-md-6">
									<input  type="email" name="email" class="form-control" required="required" placeholder="Địa chỉ email của bạn..">
								</div>
								<div class="form-group col-md-12">
									<input  type="text" name="subject" class="form-control" required="required" placeholder="Tiêu đề">
								</div>
								<div class="form-group col-md-12">
									<textarea   name="message" id="message" required="required" class="form-control" rows="8" placeholder="Lời nhắn của bạn.."></textarea>
								</div>                        
								<div class="form-group col-md-12">
									<input  type="submit" name="submit" class="btn btn-primary pull-right" value="Gửi">
								</div>
							</form>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="contact-info">
							<h2 class="title text-center">Thông tin liên hệ</h2>
							<address>
								<p>NL Accessories</p>
								<p>217 Quận Thủ Đức, TP. Hồ Chí Minh</p>
								<p>TP. HCM, Việt Nam</p>
								<p>SĐT: 0988972381</p>
								<p>Email: nonglamdaquy@nonglam.com</p>
							</address>
							<div class="social-networks">
								<h2 class="title text-center">Mạng Xã Hội</h2>
								<ul>
									<li>
										<a href="#"><i class="fa fa-facebook"></i></a>
									</li>
									<li>
										<a href="#"><i class="fa fa-twitter"></i></a>
									</li>
									<li>
										<a href="#"><i class="fa fa-google-plus"></i></a>
									</li>
									<li>
										<a href="#"><i class="fa fa-youtube"></i></a>
									</li>
								</ul>
							</div>
						</div>
					</div>    			
				</div>  
			</div>	
		</div><!--/#contact-page-->

<jsp:include page="footer.jsp" />



		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
		<script type="text/javascript" src="js/gmaps.js"></script>
		<script src="js/contact.js"></script>
		<script src="js/price-range.js"></script>
		<script src="js/jquery.scrollUp.min.js"></script>
		<script src="js/jquery.prettyPhoto.js"></script>
		<script src="js/main.js"></script>
	</body>
	</html>