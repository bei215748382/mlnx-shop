<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <script src="common\plugins\bootstrap\bootstrap.min.js"></script>
  <link href="common/css/shop/cart.css" rel="stylesheet"></link>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>购物车</title>
  </head>
 <body>
	<header><img src="common/img/back-white.png" /><div class="title">我的收藏</div></header>
	<p align="center"><img src="common\img\shop\cart/cart.png" /></p>
	<div class="carttext">购物车还是空的</div>
	<div class="carttext1">快去挑几件喜欢的宝贝吧</div>
	<div class="goshopping" >
	<a href="index.html">
	<button type="button" class="btn-go">去逛逛</button></a>
	</div>
 </body>
</html>
