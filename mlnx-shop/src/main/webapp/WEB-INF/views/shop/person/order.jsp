<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>个人订单</title>
</head>
<body>
<c:forEach items="${orders}" var="order">
<label>订单id:${order.id}</label><br/>
<label>订单名称:${order.name}</label><br/><br/><br/>
</c:forEach>
</body>
</html>