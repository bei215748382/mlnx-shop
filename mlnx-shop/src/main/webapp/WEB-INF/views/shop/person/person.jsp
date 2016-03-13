<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>个人中心</title>
<link href="${ctx}/common/css/shop/base.css" rel="stylesheet"></link>
<link href="${ctx}/common/css/shop/person.css" rel="stylesheet"></link>
</head>
<body>
	<div class="bg-blue font-white header">
		<span onclick="back();">&lt;</span><span class="right" onclick="setting()">设置</span>
	</div>
	<div>
		<ul class="no-style font-white" id="title">
			<li class="bg-blue"><img
				src="${userVo.pic}" alt="avater" onerror="this.src='${ctx}/common/img/shop/person_center/touxiang.png'"/>
				<p>${userVo.nickname}</p></li>
		</ul>
	</div>
	<div class="clear"></div>
	<div class="bg-white order border">
		我的订单<span class="right grey">查看所有订单&gt;</span>
	</div>
	<div class="clear"></div>
	<div class="box">
		<ul class="no-style head">
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/person_center/daifukuan.png" alt="daifukuan" />
				<p>待付款</p></li>
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/person_center/daifahuo.png" alt="daifahuo" />
				<p>待发货</p></li>
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/person_center/daishouhuo.png"
				alt="daishouhuo" />
				<p>待收获</p></li>
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/person_center/daipingjia.png"
				alt="daipingjia" />
				<p>待评价</p></li>
		</ul>
	</div>
	<div class="clear"></div>
	<div class="box">
		<ul class="no-style foot margin-top-15">
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/person_center/zhanghuyue.png"
				alt="zhanghuyue" />
				<p>账户余额:<span class="red">${userVo.money}元</span></p></li>
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/person_center/youhuiquan.png"
				alt="youhuiquan" />
				<p>优惠券:<span class="red">${userVo.coupons.size()}张</span></p></li>
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/person_center/jifen.png" alt="jifen" />
				<p>积分:<span class="red">${userVo.score}分</span></p></li>
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/person_center/xiugaimima.png"
				alt="xiugaimima" />
				<p>修改密码</p></li>
		</ul>
	</div>
	<div class="clear"></div>
	<div class="box">
		<ul class="no-style foot">
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/person_center/shoucangjia.png"
				alt="shoucangjia" />
				<p>收藏夹</p></li>
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/person_center/gouwuche.png" alt="gouwuche" />
				<p>购物车</p></li>
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/person_center/dizhiguanli.png"
				alt="dizhiguanli" />
				<p>地址管理</p></li>
			<li class="bg-white"><img
				src="${ctx}/common/img/shop/person_center/gengduo.png" alt="gengduo" />
				<p>更多</p></li>
		</ul>
	</div>
	<script src="${ctx}/common/js/base.js"></script>
	<script>
	function setting() {
		window.location.href="${ctx}/shop/setting";
	}
	</script>
</body>
</html>