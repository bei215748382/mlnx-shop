<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>电商订单确认模板</title>
<link href="${ctx}/common/plugins/bootstrap/bootstrap.css"
	rel="stylesheet">
<link href="${ctx}/common/css/shop/base.css" rel="stylesheet"></link>
<link href="${ctx}/common/css/shop/orderconfirm.css" rel="stylesheet"></link>

</head>
<body>
<header>
	<div id="back">< </div>
	订单确认
</header>
<section>
	<div class="table">
		<div class="table-row">
			<div class="table-cell">
				<img src="" alt="desc" />
			</div>
			<div class="table-cell">
				<p>
				收件人：丁丁
				15845210254
				</p>
				<p>收货地址：浙江省宁波市高新区院士路66号创业大厦129室</p>
			</div>
			<div class="table-cell">></div>
		</div>
	</div>
</section>
<section>
	<div class="table">
		<div class="table-row">
			<div class="table-cell">
				<img src="" alt="desc" />
			</div>
			<div class="table-cell">
				<p>
				美灵思指甲式检测仪 
				</p>
				<p>蓝牙式</p>
			</div>
			<div class="table-cell"><p>
				￥399.00
				</p>
				<p>1</p></div>
		</div>
	</div>
	<div class="text-left">运费合计</div> <div class="text-right">免运费</div>
	<div class="clearfix"></div>
	<div class="center pd-1"><textarea class="message" placeholder="给卖家留言"></textarea></div>
</section>
<section>
	<div>付款方式：</div>
	<div class="pay-mode">
		<img src="${ctx}/common/img/shop/product/alipay.png" alt="alipay" class="pay-img"/><span class="pay-desc">支付宝支付方便快捷</span><input type="checkbox" checked class="pay-check"/>
	</div>
	<div class="clearfix"></div>
</section>
<div class="footer">
	<div class="total">合计：￥399.00</div>
	<div class="pay">去付款</div>
</div>
</body>
</html>