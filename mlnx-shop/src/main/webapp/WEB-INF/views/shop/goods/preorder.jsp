<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>电商下单页面</title>
<link href="${ctx}/common/plugins/bootstrap/bootstrap.css"
	rel="stylesheet">
<link href="${ctx}/common/css/shop/base.css" rel="stylesheet"></link>
<link href="${ctx}/common/css/shop/preorder.css" rel="stylesheet"></link>
</head>
<body>
<div id="cover">a</div>
<div class="container" id="main">
	<img src="${ctx}/common/img/shop/index/banner_1.png" alt="product" id="product" >
	<div id="desc">
		<p class="red">￥399</p>
		<p>库存：2000</p>
		<p>请选择分类</p>
	</div>
	<div id="close">X</div>
	<div class="clearfix"></div>
	<div id="classify">分类选项</div>
	<div class="center mg-top-20"><label class="selected">血压仪+25片试纸</label><label>血压仪+50片试纸</label></div>
	<div class="table mg-top-20 border-top-bottom">
		<div class="table-row">
			<div class="table-cell" id="buy">购买数量</div>
			<div class="table-cell" id="count">
				<span>-</span>
				<span>1</span>
				<span>+</span>
			</div>
		</div>
	</div>
	
</div>
<div class="bottom-table">
	<div class="bottom-row">
			<div class="bottom-item" id="bottom-cart">加入购物车</div>
			<div class="bottom-item" id="bottom-pay">立即购买</div>
	</div>
</div>
<script>
var dheight = document.body.scrollHeight;
var cover = document.getElementById("cover");
var main = document.getElementById("main");
console.log(dheight+"cover:");
</script>
</body>
</html>