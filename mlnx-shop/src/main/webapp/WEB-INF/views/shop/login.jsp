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
</head>
<body>
	<form action="${ctx}/shop/login" method="post">
		用户名：<input type="text" name="phone" placeholder="手机号" /><br /> 密码：<input
			type="password" name="password" /><br />
		<button type="submit">提交</button>
	</form>
</body>
</html>