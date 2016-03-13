<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>电商订单取消模板</title>
<link href="${ctx}/common/plugins/bootstrap/bootstrap.css"
	rel="stylesheet">
<link href="${ctx}/common/css/shop/base.css" rel="stylesheet"></link>
<style>
	header{
		line-height:60px;
		height:60px;
		background-color:rgb(56,163,255);
		text-align:center;
		vertical-align:middle;
		font-size:2em;
		color:white;
	}
	#back{
		position:absolute;
		left:20px;
		z-index:1;
	}
	.wait{
		height:100px;
		background-color:gray;
	}
	section{
		margin-top:20px;
		background-color:white;
	}
	section .table-cell{
		height:60px;
		vertical-align: middle;
	}
	.table{
		padding:2em 1em;
		margin-bottom:0px;
	}

	.footer{
		position:fixed;
		bottom:0px;
		padding:0.4em;
		height:60px;
		line-height:60px;
		width:100%;
		text-align:right;
		background-color:white;
	}
	
	.cancel,
	.pay{
		font-size:1.2em;
		display:inline;
		padding:0.6em;
		border-radius:4px;
	}
	.pay{
		color:white;
		
		background-color:rgb(255,84,4);
	}
	.cancel{
		border:1px solid black;
	}


	
</style>

</head>
<body>
<header>
	<div id="back">< </div>
	订单确认
</header>
<section>
	<div class="wait">
		等待买家付款剩2天23小时59分自动关闭
	</div>
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
	<div class="center pd-1"><button>给卖家联系</button></div>
</section>

<div class="footer">
	<div class="cancel">取消订单</div>
	<div class="pay">付款</div>
</div>
</body>
</html>