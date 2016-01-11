<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>个人优惠券</title>
</head>
<body>
<c:forEach items="${coupons}" var="coupon">
<label>搜藏优惠券id:${coupon.id}</label><br/>
<label>搜藏的优惠券名称:${coupon.name}</label><br/><br/><br/>
</c:forEach>
</body>
</html>