<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
   <script src="common\plugins\bootstrap\bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>申请退款</title>
  <style>
	   
body{
	margin:0px;
	background-color:rgb(240,240,242);
}
.title{
	padding-top:15px;
	padding-right:19px;
	color:rgb(22,140,241);
}
header{
	height:50px;
	width:100%;
	text-align:center;
	border-bottom:2px solid rgb(231,231,231);
	background-color:rgb(255,255,255);
}
.img{
	width:38px;
	height:27px;
	float:left;
	padding-top:14px;

}
.type{
	width:100%;
	height:30px;
	background-color:rgb(248,248,248);
	padding-top:10px;
	padding-left:20px;
}
.drawback{
	width:90%;
	height:30px;
	background-color:rgb(255,255,255);
	border:2px solid rgb(231,231,231);
	margin-left:5%;
	padding-top:10px;
}
.drawback2{
	width:90%;
	height:30px;
	background-color:rgb(255,255,255);
	border-left:2px solid rgb(231,231,231);
	border-bottom:2px solid rgb(231,231,231);
	border-right:2px solid rgb(231,231,231);
	margin-left:5%;
	padding-top:10px;
}
.checkbox{
	float:right;
}
.option{
	width:90%;
	height:40px;
	background-color:rgb(255,255,255);
	border:2px solid rgb(231,231,231);
	margin-left:5%;
	
}
.apply{
	width:100%;
	height:50px;
	border:0px solid;
	background-color:rgb(22,140,241);
	margin-top:100px;
}
.photo{
	width:90%;
	height:30px;
	background-color:rgb(248,248,248);
	border:2px solid rgb(231,231,231);
	margin-left:5%;
	padding-top:10px;
	
}
.photocentification{
	float:right;
	color:rgb(196,196,196);
}
  </style>
 </head>
 <body>
	 <header><img class="img" src="common\img\shop\drawback\goback.png" /><div class="title">申请退款</div></header>
	 <form name="drawback" method="post" action="">
		<div class="type">退款类型</div>
		<div class="drawback">我要退款（无需退货）<input type="checkbox" class="checkbox"></div>
		<div class="drawback2">我要退货<input type="checkbox" class="checkbox"></div>
		<div class="type">退款原因</div>
		<select class="option">
		  <option>Volvo</option>
		  <option selected="selected">请选择退款类型</option>
		  <option>Mercedes</option>
		  <option>Audi</option>
		</select>
		<div class="type">退款金额</div>
		<input type="text" class="drawback" placeholder="请输入退款金额"/>
		<div class="type">退款说明(可不填)</div>
		<input type="text" class="drawback" placeholder="请输入退款说明"/>
		<div class="photo"><div class="photocentification">上传凭证，最多三张</div></div>
	 <input type="submit" class="apply" value="提交申请" style="color:white"/ >
	</form>
 </body>
</html>
