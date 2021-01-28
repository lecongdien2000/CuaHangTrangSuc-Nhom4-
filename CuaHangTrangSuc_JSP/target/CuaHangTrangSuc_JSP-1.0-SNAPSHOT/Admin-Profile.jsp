<%@ page import="user.User" %>
<%@ page language ="java" contentType ="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% User user = null; %>
<c:choose>
    <c:when test="${userRS==null}">
        <%
             user = ((User) session.getAttribute("user"));
            if(user==null||!user.isAdmin()){
                response.sendRedirect("404.html");
                return;
            }
        %>
    </c:when>
    <c:otherwise>
        <h>User </h>
        <%
             user = (User) request.getAttribute("userRS");
            if(user==null||!user.isAdmin()){
                response.sendRedirect("404.html");
                return;
            }
        %>
    </c:otherwise>
</c:choose>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title><%=user.getAccountName()%> | Admin</title>
  <link href="css/main.css" rel="stylesheet">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="css/style.css" />	
  <link rel="icon" href="images/logoFavicon.png" type="image/icon type">
</head>
<body>
<jsp:include page="admin-heading.jsp"/>
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
      	<h5 style="color: #372656;">Tên: <span style="color:#888;"><%=user.getAccountName()%></span></h5>
      	<h5 style="color: #372656;">ID: <span style="color:#888;"><%=user.getUsername()%></span></h5>
      </div>
      <div id="contact-details" class="col-sm-4 infor">
      <h3>Thông tin liên lạc</h3>
      <h5 style="color: #372656;">Phone: <span style="color:#888;">01234 567 890</span>
      	<button  onclick="changePhoneFunction()">Sửa</button></h5>
      <div id="phoneNumber" style="display: none;">
      	<input type="text" name=""placeholder="Số điện thoại mới"><button>ok</button></div>
      <h5 style="color: #372656;">Email: <span style="color:#888;"><%=user.getEmail()%></span>
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