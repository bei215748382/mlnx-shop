<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>电商登入页面</title>
<link href="${ctx}/common/css/shop/base.css" rel="stylesheet"></link>
<link href="${ctx}/common/css/shop/login.css" rel="stylesheet"></link>
</head>
<body ng-app="login-app" ng-controller="tabCol">
<ul class="no-style">
<li ng-repeat="tab in tabs" 
                ng-class="{active:isActiveTab(tab.url)}" 
                ng-click="onClickTab(tab)"><span class="nav">{{tab.title}}</span></li>
</ul>
<div id="mainView">
	<div ng-include="currentTab"></div>
</div>

<script type="text/ng-template" id="login.html">
<form class="tab-pane" id="login" role="form" >
<input type="text"  class="phone-input mg-top-76" placeholder="注册/手机号" /><br/>
<input type="password"  class="password-input mg-top-15" placeholder="密码" /><br/>
<label class="pull-right mg-top-15">忘记密码</label></br>
<div class="clear"></div>
<button type="submit" class="btn mg-top-250">登入</button>
</form>
</script>
	
<script type="text/ng-template" id="regist.html">
<form  class="tab-pane" id="regist" role="form">
<input type="text" class="phone-input mg-top-76" placeholder="注册/手机号" />
<input type="password" class="password-input mg-top-15" placeholder="密码" />
<div class="input-group mg-top-15" id="sendBox">
<input type="text" class="bd-right-0" placeholder="发送短信验证码" /><div class="input-group-addon"><span>发送验证码</span></div>
</div>
<button type="submit" class="btn mg-top-250">注册</button>
</form>
</script>

<script src="${ctx}/common/plugins/angular/angular.min.js"></script>
<script>
    angular.module('login-app',[]).controller('tabCol',function($scope){  //我不想说了。。只要看过这一列系demo的都应该明白了
        $scope.tabs = [{
            title: '登入',
            url: 'login.html'
        }, {
            title: '注册',
            url: 'regist.html'
        }];

    $scope.currentTab = 'login.html';

    $scope.onClickTab = function (tab) {
        $scope.currentTab = tab.url;
    }
    
    $scope.isActiveTab = function(tabUrl) {
        return tabUrl == $scope.currentTab;
    }
    })
</script>
</body>
</html>