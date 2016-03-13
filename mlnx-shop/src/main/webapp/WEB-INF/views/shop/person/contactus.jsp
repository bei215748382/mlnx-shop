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
  <title>联系我们</title>
  <style>
body{
	margin:0px;
	background-color:rgb(246,246,246);
}
.title{
	margin-top:-42px;
	text-align:center;
	color:white;
}
header{
	height:66px;
	background-color:rgb(22,140,241);
}
.logo{
	width:100%;
	height:135px;
	background-color:rgb(246,246,246);
	padding-top:35px;	
	text-align:center;
	border-bottom:1px solid rgb(237,237,237);
}

table{
	width:100%;
	height:50px;
	border-bottom:1px solid rgb(237,237,237);
}
table .name{
	width:20%;
	text-align:right;
	
}
table .mess{
	width:30%;
	text-align:center;
}
table .content{
	width:50%;
	
}
.public{
	text-align:center;
}

  </style>
 </head>
 <body>
	<header><img src="common/img/back-white.png" /><div class="title">联系我们</div></header>
	<div class="logo">
		<img src="common\img\shop\contactus\medlinx.png" />
	</div>
	<table>
	  <tr>
		<td class="name"><img src="common\img\shop\contactus\tel.png" /></td>
		<td class="mess">客服电话</td>
		<td class="content">400-820-8802</td>
	  </tr>
    </table>
	<table>
	  <tr>
		<td class="name"><img src="common\img\shop\contactus\mess.png" /></td>
		<td class="mess">客服邮箱</td>
		<td class="content">service@gxb360.com</td>
	  </tr>
    </table>
	<table>
	  <tr>
		<td class="name"><img src="common\img\shop\contactus\wechat.png" /></td>
		<td class="mess">微信</td>
		<td class="content">好心舒冠心病管家</td>
	 </tr>
    </table>
	<table>
	  <tr>
		<td class="name"><img src="common\img\shop\contactus\weblog.png" /></td>
		<td class="mess">微博</td>
		<td class="content">service@gxb360.com</td>
	  </tr>
    </table>
	<div class="public"><img src="common\img\shop\contactus\public.png" /></div>
 </body>
</html>
