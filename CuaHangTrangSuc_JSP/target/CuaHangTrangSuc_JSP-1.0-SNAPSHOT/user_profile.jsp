<%@ page import="user.User" %>
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
	<title>Thông tin | NL Accessories</title>
	<link rel="stylesheet" type="text/css" href="css/user_profile.css">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/prettyPhoto.css" rel="stylesheet">
	<link href="css/price-range.css" rel="stylesheet">
	<link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/user_profile.css">
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
	.maxwidth{
		width: 102.5%;
	}
	.inheritWith{
		width: 100%;
	}
	.padding-left{
		padding-left: 0px;
	}
	.textAlign{
		text-align: center;
		border: 0.5px solid lightgray;
	}
	.Align{
		text-align: center;
	}
</style>
</head><!--/head-->

<body>
		<jsp:include page="heading.jsp" />
		<section>
			<div style="height: 60px;">

			</div>
			<div class="container"> 
				<h1 class="text-center" style="color: #2B46DC;">Thông tin cá nhân</h1>
				<% User user = null; %>
				<c:choose>
					<c:when  test="${userRS == null}">
						<%  user = ((User)session.getAttribute("user")); %>
					</c:when>
					<c:otherwise>
						<%  user = ((User)request.getAttribute("userRS")); %>
					</c:otherwise>
				</c:choose>
				<div class="container">
			<c:if test="${userRS!=null}">
<%--	User information				--%>
					<div class="row profile">
                        <form action="userEdit" method="post">
						<div class="col-sm-3">          
							<div class="profile-sidebar">                          
								<div class="profile-userpic">
                                    <img src="images/home/profile_user.jpg" class="img-responsive" alt="Thông tin cá nhân">
								</div>

								<div class="profile-usertitle">                   
									<div class="profile-usertitle-name"> 
										<input type="text" name="accountName" value="<%=user.getAccountName()%>" style="width: 50%" class="textAlign" >
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-9">
									<div>
<%--										form old place--%>
											<div class="row textcolor">
												<p>Thông tin liên lạc: </p>
											</div>
											<div class="row marginLeft">
												<div class="col-sm-2"><label for="mail" class="Align colorText">Email: </label>
												</div>
												<div class=" col-sm-10 "><input type="text" class="maxwidth" id="mail" name="email" value="<%=user.getEmail()%>">
												</div>
											</div >
											<div class="row">
												<div class="col-sm-2"><label for="sdt" class=" colorText">Số điện thoại: </label>
												</div>
												<div class=" col-sm-10">
													<input type="text" class=" maxwidth" id="sdt" name="phone" value="">
												</div>
											</div>
											<div class="row textcolor">
												<p>Thông tin chung: </p>
											</div>
											<div class="row marginLeft">
												<div class="col-sm-2 padding-left"><label for="gender" class="col-sm-2 inheritWith colorText">Giới tính: </label>
												</div>
												<div class="col-sm-10 ">
													<input type="text" class="maxwidth " name="gender"  id="gender" value="<%=user.getGender()%>">
												</div>
											</div>
											<div class="row">
												<div class="col-sm-2 padding-left"><label for="birth" class="col-sm-2 inheritWith colorText" >Ngày sinh: </label>
												</div>
												<div class="col-sm-10 ">
													<input type="date" class="maxwidth" id="dateField" name="birth" id="birth" value="<%=user.getBirthday().convertDateToSqlString()%>">
												</div>
											</div>


											<div class="row">
												<label for="descript" style="font-size: 20px;
												color: lightseagreen; font-weight: normal">Mô tả: </label>
											</div>
											<div class="row">
												<textarea id="descript" name="descript"><%=user.getDescription()%></textarea>
											</div>

											<div id="submit" class="row colorText">
												<input type="submit" value="Xác nhận">
											</div>
<%--										</form>--%>
									</div>
								</div>
                                </form>
							</div>
<%--	end User information		--%>
			</c:if>
						</div>
					</div>

					<div style="height: 150px;">

					</div>

				</section>
				<jsp:include page="footer.jsp" />

				<script src="js/jquery.js"></script>
				<script src="js/bootstrap.min.js"></script>
				<script src="js/jquery.scrollUp.min.js"></script>
				<script src="js/price-range.js"></script>
				<script src="js/jquery.prettyPhoto.js"></script>
				<script src="js/main.js"></script>
			</body>
			<script type="text/javascript">
				// document.getElementById("dateField").defaultValue = "2014-02-09";
			</script>
			</html>