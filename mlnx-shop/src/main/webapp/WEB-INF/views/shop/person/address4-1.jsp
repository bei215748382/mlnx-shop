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
  <title>地址管理</title>
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
.area{
	width:100%;
	height:58px;
	background-color:rgb(255,255,255);
	border-left:0px;border-top:0px;border-right:0px;border-bottom:1px solid rgb(240,240,240);
}
.inpuarea{
	width:90%;
	float:left;
	height:56px;
	border-left:0px;border-top:0px;border-right:0px;border-bottom:0px;
}
.inputareagoto{
	width:7px;
	float:right;
	height:15px;
	padding-right:10px;
	padding-top:20px;
	border-left:0px;border-top:0px;border-right:0px;border-bottom:0px;
}
.function{
	padding-top:20px;
	float:left;
}
.checkboxOne {
	width: 50px;
	height: 25px;
	background: rgb(99,183,255);
	margin: 20px 20px;
	position: relative;
	border-radius: 15px;
	border:1px solid rgb(200,200,200);
	float:right;
}
.checkboxOne label {
	display: block;
	width: 25px;
	height: 25px;
	border-radius: 50%;
	border:1px solid rgb(200,200,200);
	-webkit-transition: all .5s ease;
	-moz-transition: all .5s ease;
	-o-transition: all .5s ease;
	-ms-transition: all .5s ease;
	transition: all .5s ease;
	cursor: pointer;
	position: absolute;
	top: -1px;

 	background: rgb(242,242,242);
}
.checkboxOne input[type=checkbox]:checked + label {
	left: 24px;
	background-color: rbg(255,255,255);
}
input[type=checkbox] {
	visibility: hidden;
}
.save{
	width:113px;
	height:39px;
	float:right;
	border:0px solid;
	background-color: rgb(99,183,255);
}
.blank{
	height:66px;
	width:100%;
	background-color:rgb(242,242,242);
}
</style>
 </head>
 <body>
    <header><img class="img" src="common/img/back-white.png" /><div class="title">收货地址管理</div></header>
	<form name="address" method="post" action="">
	<div  class="area">
		<input type="text" class="inpuarea" name="address" value="浙江省宁波市鄞州区"/></div>
	<div  class="area">	<input type="text" class="inpuarea" name="street" value="请输收货人街道"/><img class="inputareagoto" src="common\img\shop\address4-1\arrow_right.png" /></div>
	<div  class="area">	<input type="text" class="inpuarea" name="detailaddress" value="请输入详细地址"/><img class="inputareagoto" src="common\img\shop\address4-1\arrow_right.png" /></div>
	<div  class="area">	<input type="text" class="inpuarea" name="name" value="请输收货人姓名"/><img class="inputareagoto" src="common\img\shop\address4-1\arrow_right.png" /></div>
	<div  class="area">	<input type="text" class="inpuarea" name="phone" value="请输收货人联系电话"/><img class="inputareagoto" src="common\img\shop\address4-1\arrow_right.png" /></div>
	<div  class="area">	<input type="text" class="inpuarea" name="postcode" value="请输入邮编"/><img class="inputareagoto" src="common\img\shop\address4-1\arrow_right.png" /></div>
	<div  class="area"><div class="function">设为默认地址</div>
	<div class="checkboxOne">
		<input type="checkbox" id="checkboxOneInput"  checked>
		<label for="checkboxOneInput"></label>
		</div></div>
	<div class="blank"></div>
		
		<input type="submit" class="save" value="保存" style="color:white"/ >
	</form>
 </body>
</html>
