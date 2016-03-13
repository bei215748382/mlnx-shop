<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>电商首页模板</title>
<link href="${ctx}/common/plugins/bootstrap/bootstrap.css"
	rel="stylesheet">
<link href="${ctx}/common/css/shop/base.css" rel="stylesheet"></link>
<link href="${ctx}/common/css/shop/index.css" rel="stylesheet"></link>
</head>
<body>
	<div class="header">
		<input type="text" name="search" value="" placeholder="搜索" /> <img
			id="shopping" src="${ctx}/common/img/shop/index/shopping.png" alt="shopping" />
	</div>
			<div class="clear"></div>
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
	<div class="classify">
		<div>
			<ul class="no-style">
				<li><img src="${ctx}/common/img/shop/index/classify.png" alt="classify" />
					<p>分类</p></li>
				<li><img src="${ctx}/common/img/shop/index/heart.png" alt="heart" />
					<p>心电</p></li>
				<li><img src="${ctx}/common/img/shop/index/blood_pressure.png"
					alt="blood_pressure" />
					<p>血压</p></li>
				<li><img src="${ctx}/common/img/shop/index/blood_sugar.png"
					alt="blood_sugar" />
					<p>血糖</p></li>
			</ul>
		</div>
		<div class="clear"></div>
		<div>
			<ul class="no-style">
				<li onclick="hello()"><img src="${ctx}/common/img/shop/index/person_center.png"
					alt="person_center" />
					<p>我的</p></li>
				<li><img src="${ctx}/common/img/shop/index/order.png" alt="order" />
					<p>订单</p></li>
				<li><img src="${ctx}/common/img/shop/index/discount.png" alt="discount" />
					<p>优惠</p></li>
				<li><img src="${ctx}/common/img/shop/index/score.png" alt="score" />
					<p>积分</p></li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
	<div class="activity">
		<img src="${ctx}/common/img/shop/index/activity_1.png" alt="activity_1"
			id="left-big" /> <img src="${ctx}/common/img/shop/index/activity_2.png"
			alt="activity_2" id="right-header" /> <img
			src="${ctx}/common/img/shop/index/activity_3.png" alt="activity_3"
			class="right-footer" /> <img src="${ctx}/common/img/shop/index/activity_4.png"
			alt="activity_4" class="right-footer" />
	</div>
	<div class="clear"></div>
	<div class="hot">
		<img src="${ctx}/common/img/shop/index/hot_1.png" alt="hot_1" class="banner" />
		<img src="${ctx}/common/img/shop/index/hot_2.png" alt="hot_2" class="hot-right" />
		<img src="${ctx}/common/img/shop/index/hot_3.png" alt="hot_3" class="hot-left" />
		<img src="${ctx}/common/img/shop/index/hot_4.png" alt="hot_4" class="hot-left" />
	</div>
	<div class="clear"></div>
	<div class="like">
		<img src="${ctx}/common/img/shop/index/like_1.png" alt="like_1" class="banner" />
		<img src="${ctx}/common/img/shop/index/hot_2.png" alt="hot_2" class="hot-right" />
		<img src="${ctx}/common/img/shop/index/hot_3.png" alt="hot_3" class="hot-left" />
		<img src="${ctx}/common/img/shop/index/hot_4.png" alt="hot_4" class="hot-left" />
	</div>

	<script src="${ctx}/common/plugins/jquery/jquery-2.1.0.min.js"></script>
	<script src="${ctx}/common/plugins/bootstrap/bootstrap.min.js"></script>
	  <!-- 针对手机的一些功 -->
	<script>
		$(document).ready(function($) {
			$("#myCarousel").on("swipeleft", function() {
				$('#myCarousel').carousel('next');
			});
			$("#myCarousel").on("swiperight", function() {
				$('#myCarousel').carousel('prev');
			});
			$('#myCarousel').carousel({
				interval : 5000
			});
		});
		function hello(){
			window.location.href="${ctx}/shop/person";
		}
	</script>
</body>
</html>
