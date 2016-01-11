<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>个人地址</title>
</head>
<body>
<c:forEach items="${addresses}" var="address">
<label>id:${address.id}</label><br/>
<label>地址:${address.address}</label><br/>
<label>默认:${address.valid}</label><br/><br/><br/>
</c:forEach>
</body>
</html>