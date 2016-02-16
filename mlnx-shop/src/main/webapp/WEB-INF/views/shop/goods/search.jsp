<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>搜索</title>
<link href="${ctx}/common/css/shop/base.css" rel="stylesheet"></link>
<link href="${ctx}/common/css/shop/search.css" rel="stylesheet"></link>
</head>
<body>
	<div class="bg-blue" id="header">
		<img src="${ctx}/common/img/shop/search/back.png" alt="back" id="back" /><input
			type="text" value="" placeholder="搜索" />
	</div>
	<div class="box">
		<ul class="no-style" id="nav">
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/search/shouye.png" alt="shouye" />
				<p>商城首页</p></li>
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/search/quanbubaobei.png"
				alt="quanbubaobei" />
				<p class="selected">全部宝贝</p></li>
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/search/xinpingshangjia.png"
				alt="xinpingshangjia" />
				<p>新品上架</p></li>
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/search/huodongxiangqing.png"
				alt="huodongxiangqing" />
				<p>活动详情</p></li>
		</ul>
	</div>
	<div class="clear"></div>
	<div class="box" id="search">
		<ul class="no-style">
			<li><p class="selected-topic">综合</p></li>
			<li><p>销量</p></li>
			<li><p>新品</p></li>
			<li><p>人气</p></li>
			<li><p>价格</p></li>
		</ul>
	</div>
	<div class="clear"></div>
	<div class="box" id="shangping">
		<img src="${ctx}/common/img/shop/search/shangping.png" alt="" /><img
			src="${ctx}/common/img/shop/search/shangping.png" alt="" /><img
			src="${ctx}/common/img/shop/search/shangping.png" alt="" /><img
			src="${ctx}/common/img/shop/search/shangping.png" alt="" /> <img
			src="${ctx}/common/img/shop/search/shangping.png" alt="" /><img
			src="${ctx}/common/img/shop/search/shangping.png" alt="" /><img
			src="${ctx}/common/img/shop/search/shangping.png" alt="" /><img
			src="${ctx}/common/img/shop/search/shangping.png" alt="" />
	</div>
	<div class="clear"></div>
	
	<c:forEach items="${goods}" var="collection">
<label>搜藏的商品id:${collection.id}</label><br/>
<label>搜藏的商品名称:${collection.name}</label><br/>
<label>搜藏的商品名称:${collection.price}</label><br/><br/><br/>
</c:forEach>
</body>
</html>