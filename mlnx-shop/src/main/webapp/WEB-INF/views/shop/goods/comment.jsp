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
	
	.message{
		width:80%;
		border-radius:4px;
		background-color:#F3F3F3;
	}

	.footer{
		position:fixed;
		bottom:0px;
		height:60px;
		line-height:60px;
		width:100%;
	
		background-color:white;
	}
	
	.anon,
	.comment{
		font-size:1.4em;
		float:left;
	}
	.anon{
		padding-left:20px;
		text-align:left;
		width:80%;
	}
	.comment{
		text-align:center;
		color:white;
		width:20%;
		background-color:rgb(255,84,4);
	}

	
	
</style>

</head>
<body>
<header>
	<div id="back">< </div>
	评价
</header>

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
	<form>
		<div>
			<p>总体评价</p>
			<p>物流评价</p>
		</div>
		<div class="center">
		
			<textarea placeholder="说点什么~" class="message" rows="4"></textarea>
		</div>
	</form>
</section>

<div class="footer">
	<div class="anon"><input type="checkbox" checked />匿名评价</div>
	<div class="comment">发表评论</div>
</div>
</body>
</html>