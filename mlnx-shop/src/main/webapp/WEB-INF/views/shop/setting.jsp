<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>设置</title>
<link href="${ctx}/common/css/shop/base.css" rel="stylesheet"></link>
<style>
body{
background-color:#efefef;
}
.title{
	margin-top:-42px;
	text-align:center;
	color:white;
}
header{
	height:66px;
	background-color:rgb(22,140,241);
		margin-bottom: 20px;
}

li{
	padding:10px 10px;
	background-color:white;
	border-bottom:1px solid #D4C5C5;
}
</style>
</head>
<body ng-app="setting-app" ng-controller="settingCol">
<header><img src="${ctx}/common/img/back-white.png" alt="back" onclick="back()"/><div class="title">设置</div></header>
<ul class="no-style">
<li ng-repeat="menu in menus"><span class="nav">{{menu.title}}</span></li>
</ul>
<script src="${ctx}/common/js/base.js"></script>
<script src="${ctx}/common/plugins/angular/angular.min.js"></script>
<script>
    angular.module('setting-app',[]).controller('settingCol',function($scope){ 
        $scope.menus = [{
            title: '推送设置',
            url: 'login.html'
        }, {
            title: '一键客服',
            url: 'regist.html'
        }, {
            title: '一键分享',
            url: 'regist.html'
        }, {
            title: '密码设置',
            url: 'regist.html'
        }, {
            title: '帮助中心',
            url: 'regist.html'
        }, {
            title: '关于我们',
            url: 'regist.html'
        }, {
            title: '意见反馈',
            url: 'regist.html'
        }, {
            title: '版本更新',
            url: 'regist.html'
        }];

    })
</script>
</body>
</html>