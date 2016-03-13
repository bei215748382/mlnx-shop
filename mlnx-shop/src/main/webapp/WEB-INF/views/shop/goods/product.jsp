<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>电商商品详情</title>
<link href="${ctx}/common/plugins/bootstrap/bootstrap.css"
	rel="stylesheet">
<link href="${ctx}/common/css/shop/base.css" rel="stylesheet"></link>
<link href="${ctx}/common/css/shop/product.css" rel="stylesheet"></link>
</head>
<body>
	<img src="${ctx}/common/img/shop/product/back.png" alt="back" id="back">
	<img src="${ctx}/common/img/shop/product/shopping.png" alt="shopping"
		id="shopping">
	<div id="banner">
		<div id="myCarousel" class="carousel slide">
			<!-- 轮播（Carousel）指标 -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<!-- 轮播（Carousel）项目 -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="${ctx}/common/img/shop/index/banner_1.png" alt="banner"
						class="banner" />
				</div>
				<div class="item">
					<img src="${ctx}/common/img/shop/index/banner_1.png" alt="banner"
						class="banner" />
				</div>
				<div class="item">
					<img src="${ctx}/common/img/shop/index/banner_1.png" alt="banner"
						class="banner" />
				</div>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	<div class="container">
		<div id="title">
			<label>美灵思指甲式血氧饱和度检测仪</label>
			<div id="share">
				<img src="${ctx}/common/img/shop/product/share.png" alt="share">
				<p>分享</p>
			</div>
		</div>
		<div>
			<span id="price">￥399</span><span class="small" id="price-false">￥499</span>
		</div>
		<div class="mg-top-15">
			<span id="free-label">免运费</span>
			<div class="pull-right">
				<span>销量：377件</span><span id="collection">收藏：66</span>
			</div>
		</div>
		<div class="mg-top-15 bg-gray row" id="service">
			<img src="${ctx}/common/img/shop/product/right.png" alt="right" />7天无理由退款 <img
				src="${ctx}/common/img/shop/product/right.png" alt="right" />正品保证
		</div>
		<div class="product-bg-gray row"></div>
		<div id="size">选择：规格 ></div>
		<div class="product-bg-gray row"></div>
		<div class="pd-em">宝贝评价（20）</div>
		<div id="comment-label">
			<span>质量好</span><span>质量好</span><span>质量好</span>
		</div>
		<div class="comment-item mg-top-15">
			<img src="${ctx}/common/img/shop/product/avatar.png" alt="avatar" /> 丁丁
			<p>美灵思指甲式血氧饱和度检测仪质量好质量好质量好质量好质量好</p>
		</div>
		<div class="center">
			<span id="comment-all">查看全部评价</span>
		</div>
		<div class="product-bg-gray row"></div>
		<div class="pd-em">其他推荐 ></div>
		<div id="recommend">
			<img src="${ctx}/common/img/shop/index/banner_1.png" alt="banner" /><img
				src="${ctx}/common/img/shop/index/banner_1.png" alt="banner" /><img
				src="${ctx}/common/img/shop/index/banner_1.png" alt="banner" />
		</div>
	</div>
	<div class="bottom-table">
		<div class="bottom-row">
			<div class="bottom-item">
				<img src="${ctx}/common/img/shop/product/talk.png" alt="talk" />
				<p>客服</p>
			</div>
			<div class="bottom-item">
				<img src="${ctx}/common/img/shop/product/index.png" alt="index" />
				<p>首页</p>
			</div>
			<div class="bottom-item">
				<img src="${ctx}/common/img/shop/product/collection.png"
					alt="collection" />
				<p>已收藏</p>
			</div>
			<div id="bottom-cart">加入购物车</div>
			<div id="bottom-pay">立即购买</div>
		</div>
	</div>
	<script src="${ctx}/common/plugins/jquery/jquery-2.1.0.min.js"></script>
	<script src="${ctx}/common/plugins/bootstrap/bootstrap.min.js"></script>
</body>
</html>