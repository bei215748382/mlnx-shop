<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>测试</title>
</head>
<body>
	<div ng-app="myApp" ng-controller="myCtrl">
		名字: <input ng-model="name" />
		密码:<input type="password" ng-model="password" />
	</div>



	<script src="${ctx}/common/plugins/jquery/jquery-2.1.0.min.js"></script>
	<script src="${ctx}/common/plugins/angular/angular-1.0.1.min.js"></script>
	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope, $http) {
			$scope.name = "John Doe";
			$http.get("json").success(function(response) {
				$scope.password = response.password;
			});
		});
	</script>
</body>
</html>