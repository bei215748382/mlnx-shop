<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="common\plugins\bootstrap\bootstrap.min.js"></script>
<link href="common/css/shop/personInfo.css" rel="stylesheet"></link>
<title>个人资料</title>
</head>
<body>
<header><img src="common/img/back-white.png" /><div class="title">个人资料</div></header>
<div class="blank"></div>
<div class="photosetting">
	<div class="phototext">
		头像设置
	</div>
	<img class="imagegoto" src="common\img\shop\person_info\arrow_right.png" />
	<img class="image" src="common/img/info.png" />
</div>
<div class="namesetting">
	<div class="nametext">
		昵称
	</div>
	<img class="namegoto" src="common\img\shop\person_info\arrow_right.png" />
	<div class="name">丁丁</div>
</div>
<div class="sexsetting">
	<div class="sextext">
		性别
	</div>
	<img class="sexgoto" src="common\img\shop\person_info\arrow_right.png" />
	<div class="sex">男</div>
</div>
<div class="birsetting">
	<div class="birtext">
		生日
	</div>
	<img class="birgoto" src="common\img\shop\person_info\arrow_right.png" />
	<div class="bir">12-23</div>
</div>
<div class="telesetting">
	<div class="teletext">
		手机号码
	</div>
	<img class="telegoto" src="common\img\shop\person_info\arrow_right.png" />
	<div class="tele">18358483916</div>
</div>

</body>
</html>