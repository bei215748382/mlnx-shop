<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <script src="common\plugins\bootstrap\bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>收货地址</title>
 <style>
body{
	margin:0px;
	background-color:rgb(240,240,242);
}
.title{
	margin-top:-42px;
	padding-left:70px;
	color:white;
}
header{
	height:66px;
	width:100%;
	background-color:rgb(22,140,241);
}
.address{
	height:38px;
	padding-left:1.4%;
	padding-top:10px;
	width:100%;
	border:1px solid rgb(242,242,242);
	background-color:rgb(255,255,255);
}
</style>
 </head>
 <body>
      <header><img class="img" src="common/img/back-white.png" /><div class="title">收货地址管理</div></header>
	  <div class="address">北京市</div>
	  <div class="address">浙江省</div>
	  <div class="address">江苏省</div>
	  <div class="address">湖南省</div>
 </body>
</html>
